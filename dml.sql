--- Insert Doctor Info

INSERT INTO DOCTOR (
    DOCTOR_ID,
    NAME,
    SPECIALITY,
    GENDER,
    EMAIL
) VALUES (
    1,
    'Dr. John Smith',
    'Cardiology',
    'M',
    'john.smith@example.com'
);

INSERT INTO DOCTOR (
    DOCTOR_ID,
    NAME,
    SPECIALITY,
    GENDER,
    EMAIL
) VALUES (
    2,
    'Dr. Jane Doe',
    'Oncology',
    'F',
    'jane.doe@example.com'
);

INSERT INTO DOCTOR (
    DOCTOR_ID,
    NAME,
    SPECIALITY,
    GENDER,
    EMAIL
) VALUES (
    3,
    'Dr. Michael Lee',
    'Neurology',
    'M',
    'michael.lee@example.com'
);

INSERT INTO DOCTOR (
    DOCTOR_ID,
    NAME,
    SPECIALITY,
    GENDER,
    EMAIL
) VALUES (
    4,
    'Dr. Sarah Kim',
    'Pediatrics',
    'F',
    'sarah.kim@example.com'
);

INSERT INTO DOCTOR (
    DOCTOR_ID,
    NAME,
    SPECIALITY,
    GENDER,
    EMAIL
) VALUES (
    5,
    'Dr. David Chang',
    'Orthopedics',
    'M',
    'david.chang@example.com'
);



INSERT INTO DOCTOR (DOCTOR_ID, NAME, SPECIALITY, GENDER, EMAIL) VALUES(6, 'Dr. Mohammad Ali', 'Heart Specialist', 'M', 'mohammad.ali@example.com');


INSERT INTO DOCTOR (DOCTOR_ID, NAME, SPECIALITY, GENDER, EMAIL) VALUES
  (7, 'Dr. Mohammad Ali', 'Heart Specialist', 'M', 'mohammad.ali@example.com');

INSERT INTO DOCTOR (DOCTOR_ID, NAME, SPECIALITY, GENDER, EMAIL) VALUES
  (8, 'Dr. Lisa Johnson', 'Dermatology', 'F', 'lisa.johnson@example.com');

INSERT INTO DOCTOR (DOCTOR_ID, NAME, SPECIALITY, GENDER, EMAIL) VALUES
  (9, 'Dr. Robert Smith', 'Internal Medicine', 'M', 'robert.smith@example.com');


INSERT INTO DOCTOR (DOCTOR_ID, NAME, SPECIALITY, GENDER, EMAIL) VALUES
  (10, 'Dr. Emily Wilson', 'Psychiatry', 'F', 'emily.wilson@example.com');







-- Insert Patient Info


INSERT INTO Patient (patient_id, name, date_of_birth, gender, room_id, doctor_id)
    VALUES (15, 'John Smith', TO_DATE('1990-04-15', 'YYYY-MM-DD'), 'M', 101, 10);


INSERT INTO Patient VALUES(1, 'John Smith', TO_DATE('1990-05-10', 'YYYY-MM-DD'), 'M', 101, 11);


INSERT INTO Patient VALUES(2, 'Sarah Johnson', TO_DATE('1985-12-02', 'YYYY-MM-DD'), 'F', 102, 12);


INSERT INTO Patient VALUES(3, 'Michael Davis', TO_DATE('1978-09-15', 'YYYY-MM-DD'), 'M', 103, 13);


INSERT INTO Patient VALUES(4, 'Emily Wilson', TO_DATE('1995-07-23', 'YYYY-MM-DD'), 'F', 104, 14);


INSERT INTO Patient VALUES(5, 'David Johnson', TO_DATE('1982-03-18', 'YYYY-MM-DD'), 'M', 105, 15);


INSERT INTO Patient VALUES(6, 'Sophia Anderson', TO_DATE('1993-11-27', 'YYYY-MM-DD'), 'F', 106, 16);


INSERT INTO Patient VALUES(7, 'James Miller', TO_DATE('1975-06-14', 'YYYY-MM-DD'), 'M', 107, 17);


INSERT INTO Patient VALUES(8, 'Olivia Brown', TO_DATE('1998-02-09', 'YYYY-MM-DD'), 'F', 108, 18);

INSERT INTO Patient VALUES(9, 'William Taylor', TO_DATE('1987-10-05', 'YYYY-MM-DD'), 'M', 109, 19);


INSERT INTO Patient VALUES(10, 'Ava Martinez', TO_DATE('1991-04-29', 'YYYY-MM-DD'), 'F', 110, 20);



-- Insert Administrative Info


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1001, 1, 'Payment due on 2023-04-01');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1002, 2, 'Payment due on 2023-05-15');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1003, 3, 'Payment due on 2023-03-20');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1004, 4, 'Payment due on 2023-04-05');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1005, 5, 'Payment due on 2023-06-10');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1006, 6, 'Payment due on 2023-05-01');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1007, 7, 'Payment due on 2023-03-25');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1008, 8, 'Payment due on 2023-04-15');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1009, 9, 'Payment due on 2023-05-05');


INSERT INTO Administrative (administrative_id, patient_id, billing_information)
VALUES (1010, 10, 'Payment due on 2023-06-20');



-- Insert Test Info

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (1, 'Blood Test', TO_DATE('2022-10-15', 'YYYY-MM-DD'), 1, 1);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (2, 'X-Ray', TO_DATE('2022-11-20', 'YYYY-MM-DD'), 2, 2);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (3, 'MRI', TO_DATE('2022-12-05', 'YYYY-MM-DD'), 3, 3);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (4, 'Ultrasound', TO_DATE('2023-01-10', 'YYYY-MM-DD'), 4, 4);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (5, 'ECG', TO_DATE('2023-02-15', 'YYYY-MM-DD'), 5, 5);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (6, 'CT Scan', TO_DATE('2023-03-20', 'YYYY-MM-DD'), 6, 6);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (7, 'Urinalysis', TO_DATE('2023-04-25', 'YYYY-MM-DD'), 7, 7);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (8, 'Biopsy', TO_DATE('2023-05-30', 'YYYY-MM-DD'), 8, 8);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (9, 'Echocardiogram', TO_DATE('2023-06-05', 'YYYY-MM-DD'), 9, 9);

INSERT INTO Test (test_id, test_name, date_of_test, patient_id, doctor_id)
VALUES (10, 'Pulmonary Function Test', TO_DATE('2023-07-10', 'YYYY-MM-DD'), 10, 10);




-- Insert Nurse Info


INSERT INTO Nurse (nurse_id, name, email)
VALUES (1, 'Emily Johnson', 'emily.johnson@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (2, 'Sophia Davis', 'sophia.davis@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (3, 'Oliver Wilson', 'oliver.wilson@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (4, 'Emma Taylor', 'emma.taylor@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (5, 'James Anderson', 'james.anderson@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (6, 'Isabella Martinez', 'isabella.martinez@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (7, 'Liam Garcia', 'liam.garcia@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (8, 'Ava Hernandez', 'ava.hernandez@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (9, 'Noah Lopez', 'noah.lopez@example.com');

INSERT INTO Nurse (nurse_id, name, email)
VALUES (10, 'Mia Adams', 'mia.adams@example.com');






-- Using select

SELECT * FROM DOCTOR;

SELECT * FROM TEST WHERE TEST_NAME='Blood Test';

SELECT NAME FROM PATIENT WHERE PATIENT_ID IN (SELECT PATIENT_ID FROM TEST WHERE TEST_NAME='Blood Test' );

SELECT NAME FROM PATIENT WHERE PATIENT_ID = (SELECT PATIENT_ID FROM TEST WHERE TEST_NAME='Blood Test' );




-- Update data

UPDATE DOCTOR SET NAME='Galib' WHERE DOCTOR_ID=1;
UPDATE DOCTOR SET SPECIALITY='Cardiology' WHERE DOCTOR_ID=2;
UPDATE DOCTOR SET SPECIALITY='Cardiology' WHERE DOCTOR_ID=3;
UPDATE DOCTOR SET SPECIALITY='Cardiology' WHERE DOCTOR_ID=4;

UPDATE DOCTOR SET SPECIALITY='Neorology' WHERE DOCTOR_ID=6;
UPDATE DOCTOR SET SPECIALITY='Neorology' WHERE DOCTOR_ID=7;
UPDATE DOCTOR SET SPECIALITY='Neorology' WHERE DOCTOR_ID=8;


UPDATE PATIENT SET DOCTOR_ID=1 WHERE PATIENT_ID=1;
UPDATE PATIENT SET DOCTOR_ID=1 WHERE PATIENT_ID=2;
UPDATE PATIENT SET DOCTOR_ID=2 WHERE PATIENT_ID=3;
UPDATE PATIENT SET DOCTOR_ID=2 WHERE PATIENT_ID=4;
UPDATE PATIENT SET DOCTOR_ID=3 WHERE PATIENT_ID=5;
UPDATE PATIENT SET DOCTOR_ID=3 WHERE PATIENT_ID=6;
UPDATE PATIENT SET DOCTOR_ID=5 WHERE PATIENT_ID=7;
UPDATE PATIENT SET DOCTOR_ID=2 WHERE PATIENT_ID=8;
UPDATE PATIENT SET DOCTOR_ID=3 WHERE PATIENT_ID=9;
UPDATE PATIENT SET DOCTOR_ID=3 WHERE PATIENT_ID=10;


UPDATE TEST SET DOCTOR_ID=1 WHERE TEST_ID=1;
UPDATE TEST SET DOCTOR_ID=1 WHERE TEST_ID=2;
UPDATE TEST SET DOCTOR_ID=2 WHERE TEST_ID=3;
UPDATE TEST SET DOCTOR_ID=3 WHERE TEST_ID=4;
UPDATE TEST SET DOCTOR_ID=3 WHERE TEST_ID=5;
UPDATE TEST SET DOCTOR_ID=3 WHERE TEST_ID=6;
UPDATE TEST SET DOCTOR_ID=4 WHERE TEST_ID=7;






-- Delete data

INSERT INTO DOCTOR ( DOCTOR_ID, NAME,SPECIALITY,GENDER,EMAIL) VALUES (100, 'Rasel', 'Neurology', 'M', 'michael.lee@example.com');

DELETE FROM DOCTOR WHERE NAME='Rasel';




-- Union, Intersect, Except

SELECT SPECIALITY FROM doctor WHERE SPECIALITY LIKE 'E%'
UNION
SELECT SPECIALITY FROM doctor WHERE SPECIALITY LIKE '%M%';



SELECT SPECIALITY FROM doctor WHERE SPECIALITY LIKE '%y'
INTERSECT
SELECT SPECIALITY FROM doctor WHERE SPECIALITY LIKE '%og%';


-- except is not supported, so minus is used
SELECT SPECIALITY FROM doctor WHERE SPECIALITY LIKE '%y'
MINUS
SELECT SPECIALITY FROM doctor WHERE SPECIALITY LIKE '%M%';







--  AGGREGATE FUNCTION

 --  Count


SELECT COUNT(*) AS total_count FROM doctor;

SELECT SUM(room_id) AS total_rooms FROM PATIENT;

SELECT MAX(DOCTOR_ID) AS max_id FROM doctor;

SELECT MIN(DOCTOR_ID) AS min_id FROM doctor;



-- Group by , having

SELECT SPECIALITY, COUNT(*) AS doctor_count
FROM doctor
GROUP BY SPECIALITY
HAVING COUNT(*) >= 2;






-- Set Operation ( and,or,not)


SELECT *
FROM doctor
WHERE (SPECIALITY = 'Cardiology' AND DOCTOR_ID IN (
    SELECT DOCTOR_ID
    FROM Test
    WHERE test_name LIKE '%Blood%'
) ) OR SPECIALITY = 'Neorology';






-- String Operation

SELECT *
FROM doctor
WHERE SPECIALITY LIKE 'De%';

SELECT *
FROM doctor
WHERE SPECIALITY LIKE '%ogy';


SELECT *
FROM doctor
WHERE SPECIALITY LIKE '%e%r%';


SELECT *
FROM doctor
WHERE SPECIALITY LIKE '_________' OR SPECIALITY LIKE '__________'; -- 9 and 10 underscore








-- Join Operation

SELECT * FROM DOCTOR NATURAL JOIN TEST;

select NAME,SPECIALITY  FROM DOCTOR LEFT OUTER JOIN TEST   ON DOCTOR.DOCTOR_ID=TEST.DOCTOR_ID;
select NAME,SPECIALITY  FROM DOCTOR RIGHT OUTER JOIN TEST  ON DOCTOR.DOCTOR_ID=TEST.DOCTOR_ID;
select NAME,SPECIALITY  FROM DOCTOR FULL OUTER JOIN TEST   ON DOCTOR.DOCTOR_ID=TEST.DOCTOR_ID;






--  View

CREATE VIEW doctors_details AS
SELECT NAME, SPECIALITY
FROM doctor;








