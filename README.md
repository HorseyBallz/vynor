# Vynor by Hulko

**Vynor finds the answers nobody else thinks of.** Paste a Slovak question or category, and Claude returns one word. The word is correct but uncommon, which is what scores in [PONOR](https://ponor.sk), the Slovak word game where obvious answers score nothing.

> *Napíš tradičné slovenské jedlo* → **Hrudka** (not *bryndzové halušky*)

![Asking a question and getting a word, then pressing "Ďalšie slovo"](docs/demo.gif)

| Desktop | Phone |
| --- | --- |
| ![Answer on desktop](docs/answer.png) | ![Answer on a phone](docs/mobile.png) |

## Features

- **Paste and go:** press Ctrl/⌘ V anywhere on the page to get an answer right away. Enter sends a question you typed.
- **Ďalšie slovo** ("another word") asks for a different answer that skips the ones already shown.
- **Settings:** pick the model (Opus, Sonnet or Haiku 5.5) and the effort (low, medium or high). Your choices are remembered.
- A pixel-ocean look inspired by ponor.sk, with original artwork. All motion turns off when the device asks for reduced motion.
- The interface is in Slovak.

## Running it

The whole app is one file, `index.html`, and there's no build step. The same file runs in two places:

- **As a claude.ai artifact:** Claude answers through the artifact's `sample` capability, so no API key is needed.
- **Self-hosted at [vynor.hulko.xyz](https://vynor.hulko.xyz):** visitors enter their own Anthropic API key. It stays in their browser's localStorage and is only sent to `api.anthropic.com`.

To deploy the self-hosted copy, run:

```sh
./deploy.sh
```

This deploys the Cloudflare Worker `vynor` from a temporary folder that holds only the page, `_headers` (the content security policy), the favicon, the font and the bundled SDK. Don't run a bare `wrangler deploy` from this folder: it would publish everything in the folder.

## Project files

| File | What it is |
| --- | --- |
| `index.html` | the app: markup, styles, script and prompt |
| `anthropic-sdk.js` | a bundled copy of the Anthropic SDK, used on the self-hosted site |
| `_headers` | security headers (deploy.sh adds the script hash to the content security policy) |
| `DESIGN.md`, `PRODUCT.md` | the design system and product notes |

---

For personal use only. Vynor doesn't encourage pasting API keys or cheating on ponor.sk.
