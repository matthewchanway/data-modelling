DROP DATABASE medical_db;
CREATE DATBASE medical_db;
\c medical_db;

CREATE TABLE doctors(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE patients(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE conditions(
    id SERIAL PRIMARY KEY,
    name TEXT
);

CREATE TABLE visits(
    id SERIAL PRIMARY KEY,
    patient_id INTEGER REFERENCES patients ON DELETE SET NULL,
    doctor_id INTEGER REFERENCES doctors ON DELETE SET NULL,
    diagnosed_condition_1 INTEGER REFERENCES conditions ON DELETE SET NULL,
    diagnosed_condition_2 INTEGER REFERENCES conditions ON DELETE SET NULL
);