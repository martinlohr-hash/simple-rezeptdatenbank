// KitchenOS — Kunden-Konfiguration (Vorlage)
//
// Einrichtung: Diese Datei nach `config.js` kopieren und mit eigenen Daten füllen.
// `config.js` ist die einzige Datei mit kundenspezifischen Daten und liegt NICHT im Repo (.gitignore).
// Alle Felder sind optional — mit leeren Listen startet die App mit 0 Einträgen,
// Daten können dann direkt in der App angelegt werden.

window.KITCHEN_CONFIG = {

  // Artikel (Rohwaren/Einkaufsartikel)
  // g = Gebindegröße, e = Einheit, ek = Einkaufspreis pro Gebinde,
  // lief = Lieferantenname, datum = letztes Preisupdate (YYYY-MM-DD)
  // Beispiel: {id:'A001', name:'Butter', g:1, e:'KG', ek:3.99, lief:'Großhandel', datum:'2026-01-15', archiv:false},
  ARTICLES_SEED: [],

  // Rezepte (Verkaufsprodukte)
  // vkBrutto = Verkaufspreis brutto, mwst = 7 oder 19,
  // zutaten = [{art:'A001', name:'Butter', menge:0.009, einheit:'kg'}]
  RECIPES_SEED: [],

  // Vorprodukte (selbst hergestellte Zwischenprodukte, z.B. Saucen)
  // outputKg = Ausbeute in kg, zutaten wie bei Rezepten
  VPS_SEED: [],

  // Lieferanten
  // Beispiel: {id:'SUP01', name:'Großhandel', kdnr:'12345', url:'https://…', notizen:''},
  SUPPLIERS_SEED: [],

  // Artikel-Kategorien: alles ohne Eintrag gilt als 'Food'
  // Beispiel: {A006:'Nonfood', A011:'Bev'}
  ART_KAT: {},

  // Rezept-Vorlagen (Grundzutaten, die neue Rezepte vorbelegen)
  TEMPLATES_SEED: [],

  // HACCP-Kühlgeräte für die tägliche Temperaturkontrolle
  // min/max = zulässiger Bereich in °C
  // Beispiel: {id:'tk', name:'TK-Kühlschrank', min:-30, max:-18, v:3},
  HACCP_SEED: [],

  // Optional: Link zum eigenen HACCP-Konzept (z.B. Notion-Seite).
  // Leer lassen, wenn nicht vorhanden — der Button wird dann ausgeblendet.
  HACCP_CONCEPT_URL: '',
};
