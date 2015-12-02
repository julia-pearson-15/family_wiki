DROP TABLE IF EXISTS categories;
DROP TABLE IF EXISTS articles;
DROP TABLE IF EXISTS sections;
DROP TABLE IF EXISTS users;
DROP TABLE IF EXISTS comments;

CREATE TABLE categories (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255)
);

CREATE TABLE articles (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  upload_date DATE,
  -- do I need an edit data when it's by section?
  edit_date DATE,
  -- all this will be set up with active record to show relationships
);

CREATE TABLE sections (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  body TEXT,
  edit_date DATE
);

CREATE TABLE users (
  name VARCHAR
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  name VARCHAR(255),
  body TEXT,
  upload_date DATE
);

