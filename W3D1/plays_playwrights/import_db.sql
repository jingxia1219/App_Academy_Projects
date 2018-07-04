DROP TABLE IF EXISTS plays;
-- create a table
CREATE TABLE plays (
  id INTEGER PRIMARY KEY, -- primary key is the identifier
  title TEXT NOT NULL, -- means we need to have this piece info for every entry
  year INTEGER NOT NULL, --mandatory info
  playwright_id INTEGER NOT NULL,

  FOREIGN KEY (playwright_id) REFERENCES playwrights(id)
);

DROP TABLE if exists playwrights;

CREATE TABLE playwrights (
  id INTEGER PRIMARY KEY,
  name TEXT NOT NULL,
  birth_year INTEGER
);
-- data manipulation language 
INSERT INTO
  playwrights (name, birth_year)
VALUES
  ('Arthur Miller', 1915),
  ('Eugene O''Neill', 1888);

INSERT INTO
  plays (title, year, playwright_id)
VALUES
  ('All My Sons', 1947, (SELECT id FROM playwrights WHERE name = 'Arthur Miller')),
  ('Long Day''s Journey Into Night', 1956, (SELECT id FROM playwrights WHERE name = 'Eugene O''Neill'));
