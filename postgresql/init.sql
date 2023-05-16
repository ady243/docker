DROP DATABASE IF EXISTS todos;

CREATE DATABASE todos;

CREATE TABLE todo (
  id SERIAL PRIMARY KEY,
  task TEXT NOT NULL,
  completed BOOLEAN NOT NULL DEFAULT false
);

INSERT INTO todo (task) VALUES ('Faire les courses');
INSERT INTO todo (task) VALUES ('Appeler le médecin');
