---
name: Vynor by Hulko
description: A pixel-art fishing scene over sky and sea, where the answer is the catch.
colors:
  gold: "#ffd84f"
  gold-hover: "#ffe28c"
  gold-shade: "#a07d00"
  accent: "#ffe9a3"
  danger: "#ff9f43"
  sky-1: "#8fd3ff"
  sky-2: "#98d6f5"
  sky-3: "#bfe9ff"
  sky-4: "#eaf6ff"
  sea-top: "#2678b2"
  sea: "#0c2f52"
  sea-deep: "#020814"
  board: "#04101e"
  fg: "#eaf6ff"
  muted: "#9cc3dd"
  ink: "#06142a"
  slate: "#2d5f86"
  outline: "#1a1206"
  wood-lit: "#9a6a3a"
  wood-left: "#7a5230"
  wood-right: "#5a3a1a"
  wood-shade: "#4a2f14"
  nail: "#e8d2a0"
typography:
  display:
    fontFamily: "Jersey 10, Arial, sans-serif"
    fontSize: "clamp(36px, 14cqi, 88px)"
    fontWeight: 400
    lineHeight: 1.1
  logo:
    fontFamily: "Jersey 10, Arial, sans-serif"
    fontSize: "48px"
    fontWeight: 400
    lineHeight: 1
    letterSpacing: "0.04em"
  headline:
    fontFamily: "Jersey 10, Arial, sans-serif"
    fontSize: "2rem"
    fontWeight: 400
    lineHeight: 1
  title:
    fontFamily: "Jersey 10, Arial, sans-serif"
    fontSize: "1.5rem"
    fontWeight: 400
    lineHeight: 1
  body:
    fontFamily: "Arial, Helvetica, sans-serif"
    fontSize: "1rem"
    fontWeight: 400
    lineHeight: 1.5
  input:
    fontFamily: "Arial, Helvetica, sans-serif"
    fontSize: "1.125rem"
    fontWeight: 400
    lineHeight: 1.5
  label:
    fontFamily: "Arial, Helvetica, sans-serif"
    fontSize: "0.875rem"
    fontWeight: 400
    lineHeight: 1.5
rounded:
  none: "0px"
spacing:
  art-px: "3px"
  xs: "8px"
  sm: "12px"
  md: "16px"
  lg: "24px"
  xl: "32px"
  xxl: "48px"
components:
  button-primary:
    backgroundColor: "{colors.gold}"
    textColor: "{colors.ink}"
    typography: "{typography.headline}"
    rounded: "{rounded.none}"
    padding: "12px 16px"
    width: "100%"
  button-primary-hover:
    backgroundColor: "{colors.gold-hover}"
  button-primary-disabled:
    backgroundColor: "{colors.slate}"
    textColor: "{colors.muted}"
  button-pixel:
    backgroundColor: "{colors.slate}"
    textColor: "{colors.fg}"
    typography: "{typography.title}"
    rounded: "{rounded.none}"
    padding: "10px 16px"
  button-pixel-pressed:
    backgroundColor: "{colors.gold}"
    textColor: "{colors.ink}"
  button-pixel-pressed-hover:
    backgroundColor: "{colors.gold-hover}"
  field:
    backgroundColor: "{colors.fg}"
    textColor: "{colors.ink}"
    typography: "{typography.input}"
    rounded: "{rounded.none}"
    padding: "12px 16px"
  answer-board:
    backgroundColor: "{colors.board}"
    textColor: "{colors.fg}"
    rounded: "{rounded.none}"
    padding: "24px 16px"
  warning-dialog:
    backgroundColor: "{colors.sea}"
    textColor: "{colors.fg}"
    rounded: "{rounded.none}"
    padding: "48px 24px 24px"
    width: "420px"
  key-cap:
    backgroundColor: "{colors.slate}"
    textColor: "{colors.fg}"
    padding: "2px 6px"
---

# Design System: Vynor by Hulko

## Overview

**Creative North Star: "The Fisherman's Catch"**

The page is a pixel-art fishing scene. A sky of four flat bands sits over a sea that darkens from a bright surface blue to near-black; a small boat rocks on the waterline, and its line drops to the hook that leads the gold VYNOR logo. Everything the visitor works with (the question box, the settings box, the answer board, the buttons) floats in that water as a pixel object: square corners, notched outlines, hard offset shadows, wooden frames. The answer is the catch, shown on a wooden board, and it is the loudest thing on the page.

The world is modeled on ponor.sk's pixel ocean with original artwork. Every sprite is inline SVG drawn on an art-pixel grid (one art pixel = 3px on phones, 4px from 960px up) and rendered with crisp edges; every frame, triangle, bubble and nail is built from that same pixel unit. Motion is gentle and stepped: sprites alternate two frames, waves drift in pixel steps, fish cross slowly, and the deeper a creature swims the dimmer it is. One palette serves light and dark mode; the scene is the design.

Density is low: one centred column on phones and tablets, two equal columns (question left, answer right) in a 1152px block on PC. Nothing moves under the visitor's hand: no layout jumps, no auto-scroll.

**Key Characteristics:**
- Flat sky bands over a vertical sea gradient, one palette in every colour scheme.
- Jersey 10 pixel type for the logo, labels, buttons and the answer; Arial for sentences and typed text.
- An art-pixel unit (3px phone, 4px PC) that sizes sprites, frame notches, lift shadows and pixel triangles.
- Notched pixel frames and wooden plank frames instead of borders and radii.
- Hard, unblurred offset shadows; depth in the scene by brightness, not blur.
- Two-frame stepped sprite animation, all of it off under reduced motion.

## Colors

A sunny sky-over-sea scene with one warm gold for the things worth catching.

### Primary
- **Catch Gold** (gold): the logo, the primary "Ďalšie slovo" button, a pressed pledge or picked choice, the copied state of "Kopírovať", the ponor.sk link, the footer's key words, and text selection.
- **Pale Gold Hover** (gold-hover): hover on gold buttons only.
- **Gold Shade** (gold-shade): the gold button's thick bottom edge and its notch underside; never a fill.
- **Foam Gold** (accent): focus rings, inline links, the busy status and cursor, and sun glitter on the water.

### Secondary
- **Warning Orange** (danger): the entry warning's ring, title, key words and "!" tab, and the error status. Nowhere else.

### Tertiary
- **Driftwood** (wood-lit, wood-left, wood-right, wood-shade): the four plank edges of a wooden frame, lit from the top left (top lightest, bottom darkest).
- **Brass Nail** (nail): the single-art-pixel nail in each corner of the answer board.

### Neutral
- **Sky Bands** (sky-1 to sky-4): four flat horizontal bands, dark at the top to pale at the horizon, filling the sky height (128px phone, 176px PC). sky-4 also forms the surface foam.
- **Surface Blue** (sea-top): the sea right under the waterline and the wave crests.
- **Open Sea** (sea): the mid sea, held from 160px under the surface to 70% of the page; also the warning box fill.
- **Abyss** (sea-deep): the page bottom, the html background the page fades to on leaving, and the answer word's shadow.
- **Night Board** (board): the answer board's fill, near-black and mostly opaque, darker than the sea around it at its usual depth, so the word reads first and fish pass behind it unseen.
- **Foam White** (fg): body text on the sea, the answer word, and the fill of the question and settings fields.
- **Seafoam Grey** (muted): the lede, hints, labels, status text and disabled button text.
- **Deep Ink** (ink): text on gold and on the pale fields; the caret.
- **Slate Blue** (slate): the default fill of small pixel buttons and key caps, placeholders, the resize grip, disabled fills.
- **Tar Outline** (outline): sprite outlines, the answer board's notched outline, the logo's and hook's hard shadow, and the fishing line above water.

### Named Rules
**The Sky-Over-Sea Rule.** One palette for light and dark: the scene does not swap themes, so no colour gets a dark-mode twin.

**The Gold Is the Catch Rule.** Gold marks only what is caught or chosen: the logo, the primary action, the pressed or picked state, the copied state, and the ponor.sk link. A resting secondary button is slate, never gold.

**The Depth Dims Rule.** A creature's brightness falls with its depth, `brightness(1 - depth × 0.5)` for a depth of 0 to 1, and on phones the fish passing under the column stay at 0.45 opacity. No sea creature near the column outshines the answer.

## Typography

**Display Font:** Jersey 10 (with Arial, sans-serif), self-hosted next to the page
**Body Font:** Arial (with Helvetica, sans-serif)

**Character:** A chunky pixel face for everything read at a glance, beside a plain system sans for sentences and for whatever the visitor types, so a pasted question never looks like game art.

### Hierarchy
- **Display** (400, clamp(36px, 14cqi, 88px), 1.1): the answer word only, sized by the answer board's width so a 19-letter word fits on one line down to 320px screens; Foam White with a 4px Abyss shadow; balanced wrapping.
- **Logo** (400, 48px under 600px / 64px / 80px from 960px / 96px from 1280px, 1, 0.04em, uppercase): VYNOR in Catch Gold with a Tar Outline shadow of one logo art pixel, at least 4px. The pixel hook in front of it is 1em, 16 art pixels to the em; the steps are whole art pixels (3, 4, 5, 6px) so the boat stays crisp. The Hulko byline is .38em, a third of the letters' width, so it follows.
- **Headline** (400, 2rem, 1): the primary button and the warning title.
- **Title** (400, 1.5rem, 1): field labels ("Otázka", "Nastavenia", "Odpoveď") and pledge buttons; 1.25rem on the choice buttons and "Kopírovať".
- **Body** (400, 1rem, 1.5): the lede (max 34em) and dialog text.
- **Input** (400, 1.125rem, 1.5): the question, the settings summary and the key field.
- **Label** (400, 0.875rem, 1.5): hints, status and footer lines; choice notes drop to 0.75rem/1.3; key caps are 0.75rem bold.

### Named Rules
**The Two Voices Rule.** Jersey 10 is for the logo, labels, buttons and the answer; Arial is for sentences and typed text. Never set a paragraph in Jersey 10.

**The Answer Is Loudest Rule.** The answer word is the only text at display size, set in Foam White on the near-black board; sea creatures near the column are dimmed and kept behind the board so none competes with it.

## Layout

A centred single column (max 672px including 16px gutters, honouring safe-area insets) on phones and tablets, 24px between blocks; the question and settings boxes come first, the answer board below them. From 960px the block widens to 1152px with 32px gutters and splits into two equal columns 48px apart: logo across the top, question and settings left, answer board right, both columns starting at the same top, the footer pushed to the bottom of the screen. The answer board keeps its own height (it reserves two lines for the word) so nothing jumps as answers stream in or the settings roll open.

The page content starts below the sky plus a 40px band of water (the water the fishing line crosses). Spacing steps are 8, 12, 16, 24, 32 and 48px; anything drawn in the scene's material (frame notches, pixel shadows, glyph pixels, gaps that must clear frame copies) is a multiple of the art pixel instead.

**The Art-Pixel Grid Rule.** Sprites, frame notches, pixel glyphs and pixel shadows are sized in art pixels (3px under 960px, 4px from 960px), and sprites render with crisp edges.

## Elevation & Depth

Depth is hard and graphic. UI objects lift off the water with unblurred offset shadows in translucent black; the scene behind them gets depth from the sea gradient, slanted light shafts, and creatures dimmed by depth. Fields and buttons lift further on hover or focus and press in on click, the shadow shrinking as the object moves.

### Shadow Vocabulary
- **Pixel lift** (`box-shadow: calc(px*2) calc(px*2) #00000059` on fields, `calc(px*3) calc(px*3) #00000059` on framed boxes and the board, `calc(px+3px) calc(px+3px) #00000059` on small buttons): the resting hard shadow of anything floating.
- **Pressed** (`2px 2px #00000059`): a pressed or latched-down button.
- **Gold edge** (`0 calc(px*2) #a07d00` plus bevel `inset 3px 3px #ffffff73, inset -3px -3px #a06e0073`): the primary button's thickness.
- **Type shadow** (`4px 4px` in Tar Outline for the logo and hook, Abyss for the answer word): solid offset shadows on display type.
- **Legibility halo** (`text-shadow: 0 1px 3px #020814, 0 0 2px #020814`): the one soft shadow, on small text over the scene so a bright fish can't wash it out.
- **Warning drop** (`0 0 0 3px danger, 8px 8px 0 3px #00000073`): the entry warning box over a blurred, darkened backdrop.

### Named Rules
**The Hard Shadow Rule.** Shadows on objects have zero blur and a hard offset; frame, lift and gold-edge shadows are sized in art pixels. The only soft shadows are the legibility halo on small text and the warning's backdrop blur.

## Shapes

Every corner is square (0 radius). Corners are instead cut like a sprite's: the notched pixel frame is four copies of the box shadowed one art pixel out on each side, which leaves the four corner pixels empty. Wooden frames add four plank edges, three art pixels out and inset one, stepped in at the corners. Triangles, nails, bubbles, splash drops and glitter are single art-pixel squares multiplied with box-shadow; new marks follow suit rather than using font glyphs or rounded dots.

**The Notched Frame Rule.** Fields and buttons take the notched frame in their own fill colour (a darker shade along the bottom edge); the answer board takes it in Tar Outline. Shadows take no layout space, so the frame never shifts the layout.

**The Wooden Frame Rule.** Only the three working boxes wear wood: the question box, the settings box, and the answer board (whose wood is a real 2-art-pixel border lit from the top left, with a brass nail in each corner).

## Components

### Buttons
Tactile pixel keys that lift, latch and press.
- **Shape:** square corners with the notched pixel frame.
- **Primary ("Ďalšie slovo"):** full-width Catch Gold slab, Deep Ink headline type, 12px 16px, a top-left light bevel and a 2-art-pixel Gold Shade bottom edge; flanked by two 5×3 art-pixel up-pointing triangles in the text colour. Hover lightens to Pale Gold; active drops one art pixel and loses its edge; focus ring in Foam Gold, offset to clear the bevel onto the water.
- **Pixel button (pledges, choices, "Kopírovať"):** Slate Blue fill, Foam White title type, 10px 16px (8px 16px for "Kopírovať"). Hover lifts 3px and lightens toward Foam White; active presses 2px down.
- **Pressed / picked:** Catch Gold with Deep Ink text, latched 2px down with the pressed shadow; "Kopírovať" pops in gold when the copy succeeds.
- **Disabled:** Slate fill, Seafoam Grey text, a flat 2px shadow, no bevel.
- Motion: springy (`cubic-bezier(.3,1.6,.4,1)`, 120-180ms) transitions, not keyframes, so they play on press and release.

### Inputs / Fields
- **Style:** Foam White fill, Deep Ink text, Slate placeholder, notched frame in the fill colour with a grey bottom edge, an inner 2px pale underline, and the pixel-lift shadow. The question and settings boxes add the wooden frame.
- **Focus:** a 2px Foam Gold ring closes in from 12px out to just outside the frame (springy, 250ms) while the field lifts 2px and its shadow grows one art pixel.
- **Resize grip:** three steps of 3px Slate squares.

### Settings Box (disclosure)
Shaped exactly like the question box and showing the current picks; a 5×3 art-pixel triangle turns from down to up as it opens. The model and effort choices roll down in the page flow (never as an overlay), as three equal-width pixel buttons each with a small note.

### Answer Board (signature)
- **Corner Style:** square, with the Tar Outline notched frame outside the wood.
- **Background:** Night Board, with a faint top highlight and bottom shade inside.
- **Border:** 2 art pixels of Driftwood planks, lit top-left; a Brass Nail pixel at each corner.
- **Internal Padding:** 24px by 16px on phones, 32px by 24px on PC (the wood comes out of the vertical padding).
- **Content:** the field label with its pixel icon, the display-size word whose letters surface one by one (50ms apart), "Kopírovať", the status line, and the primary button. While waiting, three bobbing "?" stand in for the word.

### Field Labels
Seafoam Grey title type, each led by a small pixel icon (a float, a ship's wheel, the catch) at 0.75em in crisp edges.

### Entry Warning
A 420px Open Sea box ringed in Warning Orange over a blurred Abyss backdrop, with a 56px orange "!" tab hanging off its top edge. Closing sinks it like a boat: it bobs, tips and goes under, trailing pixel bubbles.

### The Scene
Decoration only, behind everything and hidden from assistive tech: a far island with a blinking lighthouse, a twinkling sun with glitter on the water, drifting clouds and gulls, slow light shafts, fish, a jellyfish and a seahorse dimmed by depth, rising pixel bubbles, and a sand seabed with kelp, rocks, shells and a walking crab. The fishing boat's rocking and the hook's sway share the rod tip as their pivot, so the line always stays tied.

### Footer
One short disclaimer line (its key words in Catch Gold, the full wording stays in the entry warning), then one quiet row of links: hulko.xyz, the way back to vynor.hulko.xyz (claude.ai only) and a "Súkromie" toggle that rolls the privacy note down below it (self-hosted only), with the settings box's motion: a 300ms roll, the text dropping in, a small pixel triangle that flips, the page held still on shutting. The note keeps a 70ch measure. The links out, hulko.xyz and every ponor.sk link, shine on hover: a hard-edged glint in the sub's lamp light (#fff6c4) sweeps across the letters, a pixel sparkle blinks at the top corner and the link glows warm for a moment; the link keeps its colour, and a 2px underline is the hover cue that stays.

### Shipwreck (easter egg)
Five quick clicks on the boat rock it harder each time, then capsize it with a splash; the page sinks into a twice-screen-tall deep that fades to night, and its pieces spread across the seabed, dimmed. A pixel submarine with VYNOR on its hull comes from far away with its headlamp off, switches it on once near, and patrols, shining a screen-blended beam on one sunk piece after another; it is the button that brings the page back up, leaving off a random side with the lamp off. Now and then the fisherman dares the visitor in a pixel speech bubble ("Spamuj ma!").

## Do's and Don'ts

### Do:
- **Do** build new pixel elements from the art-pixel unit (3px / 4px) and render sprites with crisp edges.
- **Do** animate sprites with two frames in turn on a stepped timing (`steps(1)`), and hide the second frame when reduced motion is on.
- **Do** dim anything placed deeper in the sea with the depth brightness formula, and keep scene creatures behind the mostly opaque answer board.
- **Do** frame interactive boxes with the notched pixel frame, and reserve wood for the question, settings and answer boxes.
- **Do** keep gold for the caught or chosen state and the primary action.
- **Do** turn all decorative motion and transitions off under `prefers-reduced-motion`.

### Don't:
- **Don't** round corners or use bordered, rounded cards.
- **Don't** blur shadows on objects; the legibility halo on small text and the warning's backdrop blur are the only soft ones.
- **Don't** draw arrows, ticks or bullets with font glyphs; build them from art pixels the way the triangles are built.
- **Don't** add a dark-mode or light-mode variant of the palette.
- **Don't** let sea creatures near the column compete with the answer word: dim them by depth and keep them behind the board.
- **Don't** turn in-page panels (the settings roll) into overlays that cover content; they roll down in flow and push the page. The entry warning is the only modal.
