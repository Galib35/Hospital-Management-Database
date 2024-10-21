
DROP TABLE DOCTOR;
CREATE TABLE DOCTOR (
    DOCTOR_ID INT PRIMARY KEY,
    NAME VARCHAR(50),
    SPECIALITY VARCHAR(50),
    GENDER CHAR(1),
    EMAIL VARCHAR(50)
);


DROP TABLE Patient;

CREATE TABLE Patient (
    patient_id INT PRIMARY KEY,
    name VARCHAR(255),
    date_of_birth DATE,
    gender CHAR(1),
    room_id INT,
    doctor_id INT REFERENCES Doctor(doctor_id)
);


DROP TABLE Test;

CREATE TABLE Test (
  test_id INT PRIMARY KEY,
  test_name VARCHAR(255),
  date_of_test DATE,
  patient_id INT REFERENCES Patient(patient_id),
  doctor_id INT REFERENCES Doctor(doctor_id)
);




DROP TABLE Administrative;

CREATE TABLE Administrative (
  administrative_id INT PRIMARY KEY,
  patient_id INT REFERENCES Patient(patient_id),
  billing_information VARCHAR(255)
);


DROP TABLE Nurse;

CREATE TABLE Nurse (
  nurse_id INT PRIMARY KEY,
  name VARCHAR(50),
  email VARCHAR(100)
);