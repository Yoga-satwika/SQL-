# DDL (Data Definition Language)
  
  DDL is used to define and manage database structures — such as tables, indexes, and schemas.

# Main DDL Commands 

  CREAT - Creates new database objects (like tables, views, or indexes). 

  Example:-  
             
          CREATE TABLE Students (ID INT, Name VARCHAR(50));

  ALTER - Modifies the structure of an existing table (add, delete, or change columns).

  Example:- 

          ALTER TABLE Students ADD Email VARCHAR(100);

  DROP - Deletes an entire database object permanently.

  Example:- 

           DROP TABLE Students;

 TRUNCATE - Deletes all records from a table but keeps the table structure.

 Example:- 

          TRUNCATE TABLE Students;

 RENAME - Changes the name of a database object.

 Example:- 

         RENAME TABLE Students TO Learners;

* DDL commands are auto-committed, meaning changes are permanent once executed.

* They cannot be rolled back (undone).

* DDL affects the structure, not just the data.

<img width="389" height="308" alt="image" src="https://github.com/user-attachments/assets/83fc0ce0-20bc-4c4c-8b82-0a677c0b9f9e" />

<img width="686" height="377" alt="image" src="https://github.com/user-attachments/assets/2c26cbc1-fb4c-4420-b59e-befdc7ce122f" />

# DML (Data Manipulation Language): 

  DML is a subset of SQL that is used to manipulate and manage data stored in database tables.
  
  It allows you to insert, update, delete, and retrieve data.

# DML Commands

 * INSERT: Adding new records to a table.

 * Inserting single or multiple rows.

           INSERT INTO Students (StudentID, Name, Age, City)
           VALUES (1, 'Ravi', 20, 'Hyderabad');

          INSERT INTO Students (StudentID, Name, Age, City)
           VALUES 
          (2, 'Anita', 22, 'Chennai'),
          (3, 'Rahul', 21, 'Mumbai'),
          (4, 'Sneha', 19, 'Delhi');
 
  * Using the VALUES clause or SELECT statement

       Using VALUES clause:

       Used to insert data directly by specifying values.

           INSERT INTO Students (StudentID, Name, Age, City)
           VALUES (5, 'Kiran', 23, 'Pune');
      
    * Using SELECT statement:
  
        Used to copy data from another table.

            INSERT INTO Alumni (StudentID, Name, Age, City)
            SELECT StudentID, Name, Age, City
            FROM Students
            WHERE Age > 21;
* UPDATE: Modifying existing records in a table.

    The UPDATE statement in SQL is used to change existing data in one or more rows of a table.

   * Updating data based on specified conditions.

      You can modify specific rows by using the WHERE clause

             UPDATE Students
             SET Age = 23, City = 'Bangalore'
             WHERE StudentID = 2;

* DELETE: Removing records from a table.

    * Deleting rows based on specified conditions.

           DELETE FROM Students
           WHERE StudentID = 3;

     * Using DELETE JOIN for more complex scenarios.

            DELETE S
           FROM Students S
           JOIN StudentMarks M
           ON S.StudentID = M.StudentID
           WHERE M.Marks < 40;

* SELECT: Retrieving data from one or more tables.

    * Basic SELECT queries.

           SELECT * FROM Students;
    
    * Filtering with WHERE clause.

           SELECT column1, column2, ...
           FROM table_name
           WHERE condition;
    
    * Sorting with ORDER BY.

          SELECT * FROM Students
          ORDER BY Age DESC;

     * Limiting results with LIMIT and OFFSET.
 
           SELECT * FROM Students
           LIMIT 5 OFFSET 5;

<img width="431" height="301" alt="image" src="https://github.com/user-attachments/assets/bd12be6b-8e5a-4bb2-b525-35f8eb16d6c2" />

<img width="382" height="318" alt="image" src="https://github.com/user-attachments/assets/81e59c7d-586d-4454-818b-615d13a06582" />

# DCL (Data Control Language): 

  DCL commands are used to control access to data within a database.

* GRANT: Assigning Privileges to Database Users

    The GRANT command is used to give specific permissions to users or roles.

    * Granting SELECT, INSERT, UPDATE, DELETE, and Other Privileges

      You can grant different types of privileges depending on what level of access the user needs.

          GRANT SELECT, INSERT, UPDATE, DELETE
          ON Employees
          TO user1;

* Granting privileges at different levels (database, table, column).

  Privileges can be assigned at multiple levels:

 *  Database level : Access to all objects within the database.

         GRANT ALL PRIVILEGES ON DATABASE company TO user1;
 
 * Table level: Access to a specific table.

        GRANT SELECT ON Employees TO user1;

 * Column level: Access to specific columns only.

       GRANT SELECT (Name, Salary) ON Employees TO user1;

* EVOKE: Revoking privileges from database users.

   The REVOKE command is used to remove privileges that were previously granted using the GRANT command.

*  Removing Previously Granted Privileges

        REVOKE INSERT, UPDATE
        ON Employees
        FROM user1;
* Ensuring Proper Security and Access Control

     Revoking privileges helps maintain data security by ensuring users only have the permissions necessary for their role.

 <img width="395" height="328" alt="image" src="https://github.com/user-attachments/assets/a31fb5f7-8909-4659-9f6c-6620ee22cc4e" />
 <img width="475" height="355" alt="image" src="https://github.com/user-attachments/assets/407fcfd1-b0e9-4804-87ff-b6837b7bc468" />







    



