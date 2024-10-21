
# Hospital Management Database Project

This project represents a relational database system for managing a hospital's operations. It includes functionalities for managing doctors, patients, medical tests, administrative details, and nurses. The database consists of several entities that reflect the real-world relationships within a hospital environment, such as doctors treating patients and patients undergoing tests.

## Database Structure

The project includes three SQL files:
1. **DDL (Data Definition Language)**: Defines the structure of the database (tables, relationships).
2. **DML (Data Manipulation Language)**: Contains the insertion of records (sample data).
3. **PL/SQL (Procedural Language SQL)**: Implements procedural logic for database operations.

### Tables

- **Doctor**: Stores information about doctors including their ID, name, speciality, gender, and email.
- **Patient**: Stores patient details such as ID, name, date of birth, gender, room assignment, and doctor in charge.
- **Test**: Logs medical tests performed for patients with details of the test name, date, and the doctor responsible.
- **Administrative**: Contains billing information and administrative details for patients.
- **Nurse**: Stores nurse information with their name and email.

### Relationships

- Each **Doctor** can have multiple patients.
- Each **Doctor** can order multiple tests for patients.
- Each **Patient** can have multiple tests.
- Each **Patient** has one corresponding administrative record.
- **Nurses** are independent of the above entities.

### How to Use

1. **DDL (Create Tables)**: 
   - Run the `ddl.sql` file to create the tables and define relationships in the database.

2. **DML (Insert Data)**:
   - Use the `dml.sql` file to insert sample records for doctors, patients, tests, administrative data, and nurses.

3. **PL/SQL (Procedures)**:
   - Execute the `pl_sql.sql` file for executing various stored procedures, functions, and cursors. Examples include fetching doctor details, updating patient information, and more.

### Features

- Proper relationships between doctors, patients, tests, administrative data, and nurses.
- SQL queries for data retrieval, updates, and aggregation.
- Use of PL/SQL for procedural logic such as loops, cursors, and more.
- Includes operations like joins, string manipulation, aggregate functions, and set operations.

### Example Queries

- Fetch all doctors who specialize in cardiology:
    ```sql
    SELECT * FROM Doctor WHERE Speciality = 'Cardiology';
    ```

- Find all patients who have undergone a specific test:
    ```sql
    SELECT Name FROM Patient WHERE Patient_ID IN (SELECT Patient_ID FROM Test WHERE Test_Name = 'Blood Test');
    ```

- Update doctor information:
    ```sql
    UPDATE Doctor SET Speciality = 'Neurology' WHERE Doctor_ID = 2;
    ```

### ER Diagram

The ER diagram below outlines the relationships between the entities:
1. One-to-many between Doctor and Patient.
2. One-to-many between Doctor and Test.
3. One-to-many between Patient and Test.
4. One-to-one between Patient and Administrative.
5. Independent Nurse entity.

---

### Conclusion

This database project provides a comprehensive solution for managing hospital data. It effectively utilizes SQL, PL/SQL, and proper database design principles to handle real-world hospital operations such as tracking doctors, managing patients, logging tests, and storing administrative records.

