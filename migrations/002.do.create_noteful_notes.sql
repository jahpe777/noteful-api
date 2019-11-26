CREATE TABLE IF NOT EXISTS noteful_notes (
  id INTEGER PRIMARY KEY GENERATED BY DEFAULT AS IDENTITY,
  name TEXT NOT NULL,
  modified TIMESTAMP NOT NULL DEFAULT now(),
  folderId INTEGER REFERENCES noteful_folders(id) ON DELETE CASCADE NOT NULL,
  content TEXT
);