# Product

## Register

product

## Users

Gastronomiebetreiber (primär: Inhaber/Küchenchef kleiner Betriebe) die Rezeptkosten, Einkaufspreise und Margen selbst verwalten. Genutzt im Küchenbüro oder Backoffice, oft unter Zeitdruck, in der Regel ohne IT-Kenntnisse. Mittelfristig auch für andere Betriebe einsetzbar — Onboarding und Selbsterklärung werden wichtiger.

## Product Purpose

Küchenkalkulations-Tool: Artikel (Zutaten) verwalten, Rezepte mit automatischer WE-Berechnung anlegen, Lieferanten und Preise tracken, Rechnungen per KI scannen, Deckungsbeiträge überwachen. Erfolg = Küchenbetreiber kennt jederzeit seine echten Kosten und handelt auf Basis von Daten statt Bauchgefühl.

## Brand Personality

Präzise · Professionell · Ruhig

Das Tool spricht wie ein erfahrener Mitarbeiter: knapp, sachlich, zuverlässig. Kein Marketing-Ton, kein Überzeugungsdrang. Wenn Zahlen gut sind, sagt das Tool nichts Besonderes — es zeigt sie einfach klar.

## Anti-references

- **Excel / Google Sheets**: Flaches Grau, kein Kontrast-Rhythmus, alles gleich gewichtet — das Gegenteil von klarer Hierarchie.
- **Restaurant-POS-Systeme (Toast, Lightspeed)**: Blaue Rounded-Buttons, Icon-lastig, Consumer-App-Ästhetik — wirkt nach Gastro-Klischee, nicht nach Profi-Tool.
- **Food-Delivery-Apps (Lieferando)**: Warme Fotos, emotionale Orangetöne als Branding, App-Store-Optik.

## Design Principles

1. **Zahlen zuerst** — Daten sind das Produkt. Chrome dient den Daten; kein UI-Element konkurriert mit dem Inhalt.
2. **Ruhige Kompetenz** — Das Tool wirkt wie ein stiller Experte: keine Überraschungen, keine Gimmicks, keine dekorierten Zustände die nichts aussagen.
3. **Schnelle Lesbarkeit** — Wer unter Zeitdruck in die Marge eines Rezepts schaut, braucht sofort die Antwort. Hierarchie und Kontrast sind funktionale Anforderungen, keine Ästhetik.
4. **Null Zeremonie** — Kein Confirmation-Dialog für reversible Aktionen, keine Ladeanimation für schnelle Abfragen, keine Tooltips die erklären was offensichtlich ist.
5. **Skalierbare Klarheit** — Selbsterklärend genug für einen neuen Nutzer, effizient genug für jemanden der das Tool täglich benutzt.

## Accessibility & Inclusion

- WCAG AA als Ziel (4.5:1 Kontrastverhältnis für Body-Text)
- Reduzierte Bewegung via `prefers-reduced-motion` berücksichtigen
- Keine Farbabhängigkeit für kritische Statusanzeigen (Ampel immer mit Icon/Text ergänzen)
