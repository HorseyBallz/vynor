#!/bin/sh
# Publishes vynor.hulko.xyz (Cloudflare Worker "vynor", static assets only).
# Deploys from a temp dir holding just the page, its headers, the favicon, the font and the SDK bundle, so backups/, ponor-design/ and dotfiles never go live.
# index.html is a claude.ai artifact fragment (claude.ai adds the document shell), so add one here.
src=$(cd "$(dirname "$0")" && pwd) && d=$(mktemp -d) || exit 1
trap 'rm -rf "$d"' EXIT
{ printf '<!doctype html><html lang="sk"><meta charset="utf-8"><meta name="viewport" content="width=device-width,initial-scale=1,viewport-fit=cover"><link rel="icon" type="image/svg+xml" href="/favicon.svg">\n'; cat "$src/index.html"; } > "$d/index.html"
cp "$src/favicon.svg" "$src/Jersey10-Regular.ttf" "$src/anthropic-sdk.js" "$d" || exit 1
# only the page's one inline script may run: its hash replaces script-src's 'unsafe-inline' ('|' because base64 has '/')
h=$(perl -0ne 'print $1 if /<script>(.*?)<\/script>/s' "$src/index.html" | openssl dgst -sha256 -binary | base64)
sed "s|script-src 'self' 'unsafe-inline'|script-src 'self' 'sha256-$h'|" "$src/_headers" > "$d/_headers"
grep -q "'sha256-" "$d/_headers" || { echo "deploy.sh: script hash missing from _headers" >&2; exit 1; }
printf '.wrangler\n' > "$d/.assetsignore" && cd "$d" && npx -y wrangler@4.153.0 deploy --name vynor --assets . --compatibility-date 2026-10-23
