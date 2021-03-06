-- Your SQL goes here
CREATE TABLE ovens (
    oven_id SERIAL PRIMARY KEY,
    trailer INTEGER NOT NULL REFERENCES trailers(trailer_id) ON DELETE CASCADE
);

CREATE TABLE oven_data (
    oven_data_id SERIAL,
    oven INTEGER NOT NULL REFERENCES ovens(oven_id) ON DELETE CASCADE,
    created_at TIMESTAMP NOT NULL DEFAULT now(),
    temperature REAL,
    PRIMARY KEY (oven_data_id, created_at)
);

INSERT INTO ovens (trailer)
VALUES (
    (SELECT trailer_id FROM trailers LIMIT 1)
);