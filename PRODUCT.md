# Product

<!-- impeccable:product-schema 1 -->

## Platform

web

## Users
The owner (Hulko), for personal use while playing PONOR (ponor.sk), a Slovak word game where obvious answers score nothing. They paste a Slovak question or category and want one answer at a glance.

## Product Purpose
Vynor answers a pasted Slovak question or category with one word that is correct but uncommon, the kind most players would not think of. Success: a valid, rarely-thought-of answer shown instantly and copyable.

## Positioning
Not "the most likely answer": the prompt deliberately asks Claude for a correct but uncommon answer, and "Ďalšie slovo" asks for another one that avoids the ones already shown.

## Operating Context
Used beside a running PONOR round, so speed matters: paste (Ctrl/⌘ V anywhere) answers immediately, Enter sends a typed question. Runs as a claude.ai artifact (Claude via the `sample` capability) and self-hosted at vynor.hulko.xyz, where visitors use their own Anthropic API key.

## Capabilities and Constraints
- Whole UI and prompt in Slovak; pasted or typed text only.
- Settings drop-down: model (Opus / Sonnet / Haiku 5.5) and effort (low / medium / high), plus the API key off claude.ai. Picks remembered in localStorage.
- Entry warning on every visit; both pledges must be pressed.
- One index.html, identical on both sites; no build step.
- The page never scrolls by itself, and content under the settings moves down with the roll rather than being covered.

## Brand Commitments
- Name "Vynor by Hulko", the pixel fishing-hook logo (favicon.svg, inlined in the h1).
- Visual world modeled on ponor.sk's pixel ocean (Jersey 10 pixel type, sky over sea, gold buttons), with original artwork, not copied sprites.
- Disclaimer: personal use only; it does not encourage pasting API keys or cheating on ponor.sk.

## Evidence on Hand
None needed; no testimonials, stats or claims are made.

## Product Principles
- The answer is the loudest thing on the page.
- Correct and uncommon, never just the most likely.
- Nothing moves under the visitor's hand: no auto-scroll, no layout jumps.
- Fast to use mid-game: paste and read.

## Accessibility & Inclusion
Respect prefers-reduced-motion (all decorative motion off). Keep text contrast on the dark sea.
