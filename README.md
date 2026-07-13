# Simple Kitchen OS

Küchenkalkulation für die Gastronomie als einzelne statische Web-App: Artikel, Rezepte mit Wareneinsatz-Ampel, Vorprodukte, Lieferanten, Preislog, Einkaufsliste, Event-Kalkulation und tägliche HACCP-Temperaturkontrolle.

Die App ist eine einzige `index.html` — kein Build-Schritt, kein Backend zwingend nötig. Daten liegen im Browser (localStorage) und optional synchronisiert in einer eigenen Supabase-Datenbank.

## Einrichtung für einen neuen Betrieb

### 1. App aufsetzen

```bash
git clone <dieses-repo>
cd simple-rezeptdatenbank
cp config.example.js config.js
```

`config.js` enthält die betriebsspezifischen Startdaten (Artikel, Rezepte, HACCP-Geräte, …) und ist per `.gitignore` vom Repo ausgeschlossen — **eigene Geschäftsdaten landen nie im Repo.** Mit der leeren Vorlage startet die App ohne Daten; alles kann auch direkt in der App angelegt werden.

Lokal testen: `index.html` im Browser öffnen (oder `python3 -m http.server`).

### 2. Hosting (optional)

Das Repo enthält einen GitHub-Pages-Workflow (`.github/workflows/deploy.yml`): Push auf `main` deployt automatisch. Deployed werden nur `index.html` und die leere Config-Vorlage — Daten kommen zur Laufzeit aus Supabase bzw. dem Gerät. Jeder andere statische Host (Netlify, eigener Server) funktioniert genauso.

### 3. Geräte-Sync über Supabase (empfohlen)

Ohne Supabase bleiben die Daten nur im jeweiligen Browser. Für Sync über mehrere Geräte:

1. Kostenloses Konto auf [supabase.com](https://supabase.com) anlegen, neues Projekt erstellen
2. SQL Editor → Inhalt von `simple-kalkulation-schema.sql` einfügen → Run
3. In der App: Einstellungen → Erweitert → Project URL + anon key eintragen

**Wichtig — ein Betrieb, ein Supabase-Projekt.** Das Schema hat bewusst kein Login: Der anon key gewährt vollen Lese- und Schreibzugriff auf alle Daten. Deshalb:

- Supabase-Projekt **niemals** für mehrere Betriebe teilen
- Den Verbindungslink aus den Einstellungen (enthält den Key) nur persönlich weitergeben, nicht per Mail/Messenger verschicken
- Bei Verdacht auf Weitergabe: anon key im Supabase-Dashboard rotieren und auf allen Geräten neu eintragen

### 4. Rechnungs-/Einkaufslisten-Scan per KI (optional)

Der Scan von Lieferantenrechnungen und handschriftlichen Einkaufslisten nutzt die Anthropic API. Dafür im Tab „Rechnungen" einen eigenen API-Key hinterlegen ([console.anthropic.com](https://console.anthropic.com)). Der Key bleibt im localStorage des Geräts. Empfehlung: einen eigenen Key nur für diese App anlegen und dort ein monatliches Ausgabenlimit setzen.

## Datenhaltung

| Ort | Was |
|---|---|
| `config.js` (lokal) | Startdaten / Seed beim allerersten Öffnen |
| Browser localStorage | Arbeitsdaten des Geräts, Einstellungen, Keys |
| Supabase (optional) | Synchronisierte Daten aller Geräte |

Ist Supabase verbunden, ist die Datenbank führend; `config.js` spielt dann keine Rolle mehr.
