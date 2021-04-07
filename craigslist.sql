

DROP DATABASE IF EXISTS craigslist;

CREATE DATABASE craigslist;

\c craigslist

CREATE TABLE posts
(
  id SERIAL PRIMARY KEY,
  title VARCHAR(255) NOT NULL,
  description TEXT,
  user_id INTEGER REFERENCES users,
  region_id INTEGER REFERENCES regions,
  category_id INTEGER REFERENCES categories,
  location TEXT
);

CREATE TABLE users
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  username VARCHAR(50) UNIQUE,
  email VARCHAR(100) UNIQUE,
  password VARCHAR(255),
  region_id INTEGER REFERENCES regions,
);

CREATE TABLE categories
(
  id SERIAL PRIMARY KEY,
  name VARCHAR(50) UNIQUE
);

CREATE TABLE regions
(
  id SERIAL PRIMARY KEY,
  region VARCHAR(50) UNIQUE
);
