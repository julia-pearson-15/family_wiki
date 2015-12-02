DROP TABLE IF EXISTS article;

CREATE TABLE article (
  id INTEGER PRIMARY KEY,
  body TEXT,
  upload_date Date,
  edit_date Date,
  author INTEGER REFERENCES user(id),
  article_id INTEGER REFERENCES article(id)
  category_id INTEGER REFERENCES category(id)
);