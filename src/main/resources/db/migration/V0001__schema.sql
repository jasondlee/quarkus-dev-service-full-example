CREATE TABLE authors
(
    id         INT PRIMARY KEY,
    last_name  TEXT,
    first_name TEXT
);

CREATE TABLE books
(
    id             INT PRIMARY KEY,
    title          TEXT,
    description    TEXT,
    published_year INT,
    author_id      INT NULL REFERENCES authors (id)
);
