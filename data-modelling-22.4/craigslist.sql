CREATE TABLE regions(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE categories(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE users(
    id SERIAL PRIMARY KEY,
    username VARCHAR(15),
    preferred_region_id INTEGER REFERENCES regions ON DELETE CASCADE
);

CREATE TABLE posts(
    id SERIAL PRIMARY KEY,
    post_title TEXT,
    post_userid INTEGER REFERENCES users ON DELETE SET NULL,
    post_location TEXT,
    post_region_id INTEGER REFERENCES regions ON DELETE SET NULL,
    post_category_id INTEGER REFERENCES categories ON DELETE SET NULL
);