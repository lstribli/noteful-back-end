CREATE TABLE IF NOT EXISTS notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  -- id is default- do not include in seed
  name TEXT NOT NULL,
  description TEXT NOT NULL,
  modified TIMESTAMPTZ DEFAULT now() NOT NULL,
  folder_id INTEGER REFERENCES folders(id) ON DELETE CASCADE
)