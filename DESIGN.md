---
name: Simple Küchenkalkulation
description: Gastronomie-Kalkulationstool für Rezeptkosten, Artikelpreise und Margen
colors:
  signal-orange: "#e85d04"
  signal-orange-deep: "#c94e03"
  ink-black: "#111111"
  ink-dark: "#1a1a1a"
  body-text: "#374151"
  muted-text: "#566373"
  placeholder: "#5e6e7f"
  bg-page: "#f3f4f6"
  bg-surface: "#ffffff"
  bg-muted: "#f8fafc"
  border-default: "#e2e8f0"
  border-muted: "#f1f5f9"
  status-danger: "#dc2626"
  status-danger-bg: "#fef2f2"
  status-success: "#16a34a"
  status-success-bg: "#f0fdf4"
  status-warning: "#d97706"
  status-warning-bg: "#fffbeb"
  status-info: "#3b82f6"
  status-info-bg: "#eff6ff"
  delivery-violet: "#a78bfa"
  delivery-violet-light: "#c4b5fd"
typography:
  display:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontSize: "22px"
    fontWeight: 700
    lineHeight: 1.2
    letterSpacing: "normal"
  headline:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontSize: "17px"
    fontWeight: 700
    lineHeight: 1.3
    letterSpacing: "-0.3px"
  title:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontSize: "15px"
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: "normal"
  body:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontSize: "13px"
    fontWeight: 400
    lineHeight: 1.5
    letterSpacing: "normal"
  label:
    fontFamily: "-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif"
    fontSize: "11px"
    fontWeight: 600
    lineHeight: 1.4
    letterSpacing: "0.5px"
rounded:
  sm: "6px"
  md: "8px"
  lg: "10px"
  pill: "100px"
spacing:
  xs: "8px"
  sm: "12px"
  md: "16px"
  lg: "20px"
  xl: "24px"
components:
  button-primary:
    backgroundColor: "{colors.signal-orange}"
    textColor: "#ffffff"
    rounded: "{rounded.sm}"
    padding: "7px 14px"
  button-primary-hover:
    backgroundColor: "{colors.signal-orange-deep}"
  button-primary-active:
    backgroundColor: "{colors.signal-orange-deep}"
  button-secondary:
    backgroundColor: "{colors.border-muted}"
    textColor: "#475569"
    rounded: "{rounded.sm}"
    padding: "7px 14px"
  button-secondary-hover:
    backgroundColor: "{colors.border-default}"
  button-ghost:
    backgroundColor: "transparent"
    textColor: "{colors.muted-text}"
    rounded: "{rounded.sm}"
    padding: "5px 8px"
  button-ghost-hover:
    backgroundColor: "{colors.border-muted}"
  button-danger:
    backgroundColor: "#fee2e2"
    textColor: "{colors.status-danger}"
    rounded: "{rounded.sm}"
    padding: "7px 14px"
---

# Design System: Simple Küchenkalkulation

## 1. Overview

**Creative North Star: "Das Profi-Kochbuch"**

Like a professional cookbook — precisely structured, black-and-white with one deliberate accent color, nothing decorative. Every element earns its place by answering one question: how fast can a kitchen operator extract the information they need?

The system lives in the tension between density and clarity. Compressed enough to show a recipe's complete P&L on a single screen; legible enough to read at a glance under kitchen-office fluorescents. The dark header and nav bar frame the workspace like a professional instrument; everything below is white and structured. Orange is a signal, not a brand statement — its construction-site bluntness is intentional: orange means "attention here."

This system explicitly rejects: the undifferentiated gray flatness of Excel/Google Sheets; the blue-rounded-button, icon-heavy consumer language of POS systems (Toast, Lightspeed); the warm-photo food-app aesthetic of delivery platforms.

**Key Characteristics:**
- Dark chrome (header + nav) + light workspace (content) — immediate structural hierarchy
- System font throughout — no custom typefaces, no optical loading, no decorative letterforms
- One accent color used with strict economy; status colors are functional only, never decorative
- Tables and structured grids as the primary layout language; data in rows, not icon tiles
- Compact sizing (13px body, 11px labels) — density is a feature, not a constraint

## 2. Colors: The Baustellen-Palette

A near-black framework holding a light workspace, with a single unambiguous construction-orange signal color and status semantics that never decorate.

### Primary
- **Construction Orange** (#e85d04): The sole interactive accent. Active tab underline (2px), primary button background, focus ring (2px + 20% alpha glow `#e85d0420`), price warning highlights. Used on ≤10% of any screen surface — its rarity is its authority.
- **Construction Orange Deep** (#c94e03): Hover state of the primary button only. Never used independently.

### Secondary
- **Delivery Violet** (#a78bfa) / **Delivery Violet Light** (#c4b5fd): Reserved exclusively for the Delivery VK metric. A deliberate outlier — this number lives outside normal pricing logic and its color signals as much. Never use violet for any other purpose.

### Neutral
- **Ink Black** (#111111): App header background. The darkest surface; anchors the page.
- **Ink Dark** (#1a1a1a): Tab bar background, primary body text.
- **Body Text** (#374151): Secondary prose and table cell content.
- **Muted Text** (#566373): Column headers, ghost button text, form labels, stat sub-text. 6.1:1 on white — WCAG AA.
- **Placeholder** (#5e6e7f): Empty states, placeholder text, stat sub-lines. 5.2:1 on white — WCAG AA.
- **Page BG** (#f3f4f6): Overall page background; separates content from browser chrome.
- **Surface White** (#ffffff): Cards, modals, table rows, inputs.
- **Muted Surface** (#f8fafc): Table header background, drop zone background.
- **Border Default** (#e2e8f0): All structural borders — cards, inputs, table headers, dividers.
- **Border Muted** (#f1f5f9): Row separators, ingredient row dividers.

### Status Colors
- **Danger** (#dc2626, bg #fef2f2): Price out-of-date, delete actions, over-budget WE, recipe warnings.
- **Success** (#16a34a, bg #f0fdf4): Synced VP articles, healthy margin ampel.
- **Warning** (#d97706, bg #fffbeb): Stale pricing alerts, mid-margin ampel.
- **Info** (#3b82f6, bg #eff6ff): Standard/default supplier badge.

### Named Rules
**The One-Signal Rule.** Construction Orange appears on one element per visual zone at a time. If two orange elements compete, one of them is wrong.

**The Functional-Color Rule.** Status colors carry meaning, not style. Never apply danger/success/warning/info as background fills for non-status content.

## 3. Typography

**Body Font:** System font stack (`-apple-system, BlinkMacSystemFont, 'Segoe UI', sans-serif`)

No custom typeface. The system font renders natively at every weight, requires no network request, and is legible in every OS context this tool runs in. Zero typographic personality is the personality — the tool should feel like a calibrated instrument, not a designed artifact.

### Hierarchy
- **Display** (700, 22px, 1.2): Large stat values on Dashboard and RecipeTab. Numbers only; never prose.
- **Headline** (700, 17px, 1.3, −0.3px): App name in the header. One instance per page.
- **Title** (600, 15px, 1.4): Modal headers, section headings within content areas.
- **Body** (400, 13px, 1.5): Table cell content, form values, running text.
- **Label** (600, 11px, 1.4, 0.3–0.5px letter-spacing, UPPERCASE): Column headers, form field labels, badge text, stat sub-labels.

### Named Rules
**The Compressed-Default Rule.** Body text is 13px, not 14px or 16px. This tool shows complete recipes, multi-column tables, and dense ingredient lists. Every pixel of vertical space is shared. Do not increase base font size without re-testing all table layouts.

**The Number-First Rule.** Large numbers (stat values, VK, WE) use Display weight (700). Surrounding labels use Label weight (600, uppercase). The number is always visually dominant.

## 4. Elevation

Two tiers only. Cards and tables are flat; modals carry the single dramatic shadow.

### Shadow Vocabulary
- **Border Elevation** (cards, inputs, stat tiles, tables): `border: 1px solid #e2e8f0` — no shadow. Structural separation via background contrast and borders alone.
- **Modal Shadow** (`.modal`): `box-shadow: 0 24px 80px rgba(0,0,0,0.25)` — a large, diffuse lift. Modals are the only elements with a true shadow; the contrast with flat surfaces makes them feel unambiguously detached.
- **Modal Overlay** (`rgba(0,0,0,0.45)`): Suppresses the page without creating visual anxiety. Neither lighter nor darker.

### Named Rules
**The Two-Tier Rule.** One tier is flat (border-only). One tier is elevated (modal shadow). There is no middle tier. Never add `box-shadow` to cards, stat tiles, or table wrappers — doing so collapses the distinction.

## 5. Components

### Buttons
Compact (7px 14px padding) with `scale(0.97)` on `:active` for tactile press feedback. Font size 13px, weight 500, radius 6px.

- **Primary:** Construction Orange (#e85d04) background, white text. Signals the single most important action per toolbar.
- **Hover:** Background shifts to Construction Orange Deep (#c94e03); scale(0.97) on press.
- **Secondary:** Muted Surface (#f1f5f9) background, Slate (#475569) text. Non-destructive secondary actions.
- **Ghost:** Transparent background, Muted Text (#64748b). Low-priority or icon-adjacent actions.
- **Danger:** Danger BG (#fee2e2), Danger text (#dc2626). Irreversible destructive actions only.
- **Small (`btn-sm`):** 4px 10px padding, 12px font. In-row actions.
- **Micro (`btn-xs`):** 2px 8px padding, 11px font. Badge-adjacent inline actions.

### Badges / Chips
Pill-shaped (100px radius), 11px, 600 weight. Purely informational — never interactive.

- **Gray** (#f1f5f9 / #64748b): Neutral/default (Lieferant label, Archiv).
- **Blue** (#eff6ff / #3b82f6): Standard/highlighted item.
- **Orange** (#fff7ed / #ea580c): Warning (stale price alert).
- **Green** (#f0fdf4 / #16a34a): Success/synced.
- **Red** (#fef2f2 / #dc2626): Error/alert (recipe warning count, price danger).

### Cards / Stat Cards
- **Corner Style:** Subtly rounded (8px radius)
- **Background:** Surface White (#ffffff)
- **Border:** 1px solid Border Default (#e2e8f0)
- **Shadow:** None — border elevation only
- **Padding:** 14px 16px

### Inputs / Fields
- **Style:** Surface White, Border Default (1px), 6px radius, 13px body font, full-width within form grid
- **Focus:** Border shifts to Construction Orange (#e85d04); `box-shadow: 0 0 0 2px #e85d0420`
- **Placeholder:** #94a3b8 — visually distinct from body text

### Navigation Tabs
Dark on dark: Ink Dark (#1a1a1a) background, inactive tabs at #777, active at #fff with a 2px Construction Orange bottom border. Overflow: scrollable on narrow viewports. Hover states guarded with `@media (hover: hover) and (pointer: fine)`.

### Ampel (Traffic Light Status)
Colored dot + bold text label. Color alone is insufficient — always pair the dot with the text label.

- **Green** (#16a34a): Price fresh
- **Yellow** (#d97706): Price aging
- **Red** (#dc2626): Price overdue

### Toggle / Switch
Track: Muted Surface (#e2e8f0) → Construction Orange (#e85d04) when active. Knob: white circle (14×14px), `transform: translateX(16px)` on check. Transitions: `background-color 200ms ease-out` on track, `transform 200ms ease-out` on knob.

### Modals
White surface (10px radius), sticky header, 90vh max-height with scroll. Entry: `opacity 0→1` + `scale(0.97→1)` over 200ms ease-out via `@starting-style`. Overlay: `rgba(0,0,0,0.45)`. Click-outside dismisses.

## 6. Do's and Don'ts

### Do:
- **Do** use Construction Orange (#e85d04) exclusively on interactive elements requiring immediate attention. Its authority comes from scarcity.
- **Do** use `border: 1px solid #e2e8f0` as the default surface separator; let background contrast do the rest.
- **Do** keep column headers at 11px uppercase 600-weight. This is the consistent signal for "structured data" throughout the app.
- **Do** pair every status color with a text label or icon — never rely on color alone (ampel always shows dot + text).
- **Do** keep body text at 13px. Density is a feature.
- **Do** give every modal a `@starting-style` entry animation (opacity + scale from 0.97). A modal that snaps in without animation is broken.
- **Do** guard all hover states with `@media (hover: hover) and (pointer: fine)`.
- **Do** always specify exact CSS transition properties, never `transition: all`.

### Don't:
- **Don't** use gradients — not on buttons, headers, or stat values. The system is flat.
- **Don't** add `box-shadow` to cards, stat tiles, or table wrappers. Only modals have shadows.
- **Don't** make it look like Excel or Google Sheets: no flat gray backgrounds with undifferentiated row weight, no monotone columns with no visual hierarchy.
- **Don't** make it look like a Restaurant POS (Toast, Lightspeed): no blue rounded buttons, no large icon-first tiles, no consumer-app visual language.
- **Don't** use Delivery Violet (#a78bfa / #c4b5fd) for any element other than the Delivery VK metric.
- **Don't** add decorative elements that carry no data and guide no action.
- **Don't** use `transition: all` — always specify exact properties (`background-color`, `transform`, `border-color`, `opacity`).
- **Don't** add hover states without `@media (hover: hover) and (pointer: fine)` — touch users must not see sticky hover states.
