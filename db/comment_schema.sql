DROP TABLE IF EXISTS comments;

CREATE TABLE comments (
  id INTEGER PRIMARY KEY,
  body TEXT,
  author INTEGER REFERENCES user(id),
  article_id INTEGER REFERENCES article(id)
);