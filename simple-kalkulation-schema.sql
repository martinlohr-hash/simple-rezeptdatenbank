-- Simple Küchenkalkulation – Supabase Schema
-- Einmalig im SQL Editor bei supabase.com ausführen
-- Spaltennamen = exakt die JS-Feldnamen (kein snake_case-Mapping nötig)

CREATE TABLE IF NOT EXISTS articles (
  id          TEXT PRIMARY KEY,
  name        TEXT NOT NULL,
  g           DECIMAL(10,4) DEFAULT 1,
  e           TEXT DEFAULT 'KG',
  ek          DECIMAL(10,4) DEFAULT 0,
  lief        TEXT DEFAULT '',
  datum       TEXT DEFAULT '',
  archiv      BOOLEAN DEFAULT false,
  varianten   JSONB DEFAULT '[]'::jsonb,
  "_vpId"     TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW(),
  updated_at  TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS recipes (
  id          TEXT PRIMARY KEY,
  name        TEXT NOT NULL,
  "vkBrutto"  DECIMAL(10,4) DEFAULT 0,
  "vkUber"    DECIMAL(10,4),
  "weEuro"    DECIMAL(10,4) DEFAULT 0,
  "wePct"     DECIMAL(10,4) DEFAULT 0,
  "dbNetto"   DECIMAL(10,4) DEFAULT 0,
  mwst        INTEGER DEFAULT 7,
  anzahl      INTEGER,
  brot        TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW(),
  updated_at  TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS vorprodukte (
  id          TEXT PRIMARY KEY,
  name        TEXT NOT NULL,
  "outputKg"  DECIMAL(10,4) DEFAULT 0,
  kosten      DECIMAL(10,4) DEFAULT 0,
  "preisKg"   DECIMAL(10,4) DEFAULT 0,
  zutaten     JSONB DEFAULT '[]'::jsonb,
  created_at  TIMESTAMPTZ DEFAULT NOW(),
  updated_at  TIMESTAMPTZ DEFAULT NOW()
);

CREATE TABLE IF NOT EXISTS price_log (
  id          TEXT PRIMARY KEY,
  datum       TEXT,
  typ         TEXT,
  produkt     TEXT,
  "altPreis"  DECIMAL(10,4),
  "neuPreis"  DECIMAL(10,4),
  quelle      TEXT,
  status      TEXT,
  created_at  TIMESTAMPTZ DEFAULT NOW()
);

-- Row Level Security
ALTER TABLE articles     ENABLE ROW LEVEL SECURITY;
ALTER TABLE recipes      ENABLE ROW LEVEL SECURITY;
ALTER TABLE vorprodukte  ENABLE ROW LEVEL SECURITY;
ALTER TABLE price_log    ENABLE ROW LEVEL SECURITY;

CREATE POLICY "allow_all" ON articles     FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "allow_all" ON recipes      FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "allow_all" ON vorprodukte  FOR ALL USING (true) WITH CHECK (true);
CREATE POLICY "allow_all" ON price_log    FOR ALL USING (true) WITH CHECK (true);

-- Auto updated_at
CREATE OR REPLACE FUNCTION set_updated_at()
RETURNS TRIGGER LANGUAGE plpgsql AS $$
BEGIN NEW.updated_at = NOW(); RETURN NEW; END; $$;

CREATE TRIGGER trg_articles_updated    BEFORE UPDATE ON articles    FOR EACH ROW EXECUTE FUNCTION set_updated_at();
CREATE TRIGGER trg_recipes_updated     BEFORE UPDATE ON recipes     FOR EACH ROW EXECUTE FUNCTION set_updated_at();
CREATE TRIGGER trg_vorprodukte_updated BEFORE UPDATE ON vorprodukte FOR EACH ROW EXECUTE FUNCTION set_updated_at();
