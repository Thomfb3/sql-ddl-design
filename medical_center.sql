

DROP DATABASE IF EXISTS medical_center;

CREATE DATABASE medical_center;

\c medical_center

CREATE TABLE patients
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
);

CREATE TABLE doctors
(
  id SERIAL PRIMARY KEY,
  first_name VARCHAR(50) NOT NULL,
  last_name VARCHAR(50) NOT NULL,
  speciality_id INTEGER REFERENCES doctor_specialities
);

CREATE TABLE patient_diagnoses
(
  id SERIAL PRIMARY KEY,
  patient_id INTEGER REFERENCES patients,
  doctor_id INTEGER REFERENCES doctors,
  diagnosis_id INTEGER REFERENCES diagnoses,
  diagnosis_date DATE
);

CREATE TABLE doctor_specialities
(
  id SERIAL PRIMARY KEY,
  speciality VARCHAR(255) NOT NULL,
);

CREATE TABLE diagnoses
(
  id SERIAL PRIMARY KEY,
  diagnosis VARCHAR(255) NOT NULL,
);
