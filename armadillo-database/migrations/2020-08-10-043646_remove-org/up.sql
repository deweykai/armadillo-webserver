-- Your SQL goes here
ALTER TABLE trailers
DROP COLUMN org;

ALTER TABLE users
DROP COLUMN org;

ALTER TABLE users
ADD trailer INTEGER NOT NULL REFERENCES trailers(trailer_id) ON DELETE CASCADE DEFAULT 1;

DROP TABLE orgs;