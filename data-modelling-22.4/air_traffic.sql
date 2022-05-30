-- from the terminal run:
-- psql < air_traffic.sql

DROP DATABASE IF EXISTS air_traffic;

CREATE DATABASE air_traffic;

\c air_traffic


CREATE TABLE airlines (
id SERIAL PRIMARY KEY,
name TEXT

);

CREATE TABLE flights(
  id SERIAL PRIMARY KEY,
  airline_id INTEGER REFERENCES airlines ON DELETE SET NULL,
  departure DATE,
  arrival DATE,
  from_city TEXT,
  from_country TEXT,
  to_city TEXT,
  to_country TEXT
);

CREATE TABLE customers(
  id SERIAL PRIMARY KEY,
  first_name TEXT,
  last_name TEXT
);




CREATE TABLE tickets
(
  id SERIAL PRIMARY KEY,
  customer_id INTEGER REFERENCES customers ON DELETE SET NULL,
  flight_id INTEGER REFERENCES flights ON DELETE SET NULL,
  airline_id INTEGER REFERENCES airlines ON DELETE SET NULL,
  seat VARCHAR(4)
 
);

