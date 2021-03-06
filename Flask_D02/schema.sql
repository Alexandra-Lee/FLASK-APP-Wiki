DROP TABLE IF EXISTS user;
DROP TABLE IF EXISTS article;

CREATE TABLE user (
    id INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL,
    username TEXT   UNIQUE    NOT NULL,
    email TEXT    NOT NULL,
    password TEXT   NOT NULL
);

CREATE TABLE article (
    id INTEGER PRIMARY KEY  AUTOINCREMENT NOT NULL,
    title TEXT NOT NULL,
    author TEXT NOT NULL,
    written_date TIMESTAMP NOT NULL,
    content TEXT NOT NULL,
    date_posted TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
);

CREATE TABLE comments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  commentator_id INTEGER NOT NULL,
  article_id INTEGER NOT NULL,
  body TEXT NOT NULL,
  created TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  FOREIGN KEY (commentator_id) REFERENCES user (id),
  FOREIGN KEY (article_id) REFERENCES article (id)
);