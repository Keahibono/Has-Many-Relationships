DROP TABLE IF EXISTS users, posts, comments;

CREATE TABLE "users" (
  id SERIAL PRIMARY KEY NOT NULL,
  username VARCHAR(90) NOT NULL,
  first_name VARCHAR(90) NULL,
  last_name VARCHAR(90) NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at  TIMESTAMP NOT NULL
);

CREATE TABLE "posts" (
  id SERIAL PRIMARY KEY NOT NULL,
  title VARCHAR(180) NOT NULL,
  url VARCHAR(510) NULL,
  content text NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at  TIMESTAMP NOT NULL,
  user_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id)
);

CREATE TABLE "comments" (
  id SERIAL PRIMARY KEY NOT NULL,
  body VARCHAR(510) NOT NULL,
  created_at TIMESTAMP NOT NULL,
  updated_at  TIMESTAMP NOT NULL,
  user_id INT NOT NULL,
  post_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(id),
  FOREIGN KEY (post_id) REFERENCES posts(id)
);