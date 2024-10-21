                                                            -- Variable declaration


-- SET serveroutput ON:
-- This statement enables the server output to display the result of DBMS_OUTPUT.PUT_LINE calls.

-- DECLARE:
-- This section declares the variables used in the code. In this case, doc_id is declared with the same data type as DOCTOR.DOCTOR_ID column, doc_name is declared with the same data type as DOCTOR.NAME column, and speciality_of_doctor is declared as a VARCHAR(30).

-- BEGIN:
-- This section marks the beginning of the code block.

-- SELECT statement:
-- The SELECT statement retrieves the DOCTOR_ID, NAME, and SPECIALITY from the DOCTOR table, based on the condition WHERE DOCTOR_ID=1. The retrieved values are then stored into the respective variables (doc_id, doc_name, speciality_of_doctor).

-- dbms_output.put_line:
-- The DBMS_OUTPUT.PUT_LINE function is used to display the fetched information. It prints the values of doc_id, doc_name, and speciality_of_doctor using concatenation and the '||' operator.

-- END:
-- This section marks the end of the code block.

-- /:
-- The forward slash executes the PL/SQL block.






SET serveroutput ON
DECLARE

doc_id DOCTOR.DOCTOR_ID%TYPE;
doc_name DOCTOR.NAME%TYPE;

speciality_of_doctor VARCHAR(30);

BEGIN

SELECT DOCTOR_ID,NAME,SPECIALITY INTO doc_id,doc_name,speciality_of_doctor FROM DOCTOR WHERE DOCTOR_ID=1;

dbms_output.put_line('Doctor id : ' || doc_id || ', Doctor name : ' || doc_name || ', Speciality : '|| speciality_of_doctor);


END;

/



-- Insert and set default value


SET serveroutput ON

DECLARE 

id_of_doctor DOCTOR.DOCTOR_ID%TYPE:=100;
name_of_doctor DOCTOR.NAME%TYPE:='Asadullah';
speciality_of_doctor DOCTOR.SPECIALITY%TYPE:='Brain';
gender_of_doctor DOCTOR.GENDER%TYPE:='M';
email_of_doctor DOCTOR.EMAIL%TYPE:='ador@gmail.com';

BEGIN

INSERT INTO DOCTOR  VALUES(id_of_doctor,name_of_doctor,speciality_of_doctor,gender_of_doctor,email_of_doctor);

END;
/


-- Row type

SET SERVEROUTPUT ON
DECLARE
  doc_row doctor%ROWTYPE;
BEGIN
  SELECT DOCTOR_ID, NAME, SPECIALITY INTO doc_row.DOCTOR_ID, doc_row.NAME, doc_row.SPECIALITY
  FROM DOCTOR
  WHERE DOCTOR_ID = 1;

  DBMS_OUTPUT.PUT_LINE('Doctor id: '||doc_row.DOCTOR_ID || ', Doctor name : '|| doc_row.NAME || ', Speciality : '|| doc_row.SPECIALITY );


END;
/


-- Cursor and row count


SET serveroutput ON
DECLARE
    doc_name Doctor.NAME%TYPE;
    doc_id DOCTOR.DOCTOR_ID%TYPE;
    CURSOR cr IS SELECT DOCTOR_ID,NAME FROM DOCTOR;

BEGIN

    OPEN cr;

    FETCH cr into doc_id,doc_name;

    WHILE cr%found LOOP

    DBMS_OUTPUT.PUT_LINE('Doctor id: '||doc_id || ', Doctor name : ' || doc_name);   

    DBMS_OUTPUT.PUT_LINE('Fetched Number of Rows : '|| cr%rowcount);

    FETCH cr into doc_id,doc_name;


END LOOP;

CLOSE cr;

END;

/



-- For loop/ while loop / array with extend() function




SET serveroutput ON
DECLARE
    doc_name Doctor.NAME%TYPE;
    doc_id DOCTOR.DOCTOR_ID%TYPE;
    CURSOR cr IS SELECT DOCTOR_ID,NAME FROM DOCTOR;

    TYPE namearray is VARRAY(10) OF Doctor.NAME%TYPE;
    arr namearray:=namearray();
    count1 NUMBER:=0;
    count2 NUMBER:=0;


BEGIN

    OPEN cr;

    FETCH cr into doc_id,doc_name;

    WHILE cr%found LOOP

        arr.extend();
        count1:=count1+1;

        arr(count1):=doc_name;


        FETCH cr into doc_id,doc_name;


    END LOOP;




    for i in 1..count1 LOOP

        DBMS_OUTPUT.PUT_LINE('Doctor name: '|| arr(i) );

    END LOOP ; 
    



CLOSE cr;

END;

/