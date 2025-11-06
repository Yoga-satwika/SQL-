# DDL (Data Definition Language)
  
  DDL is used to define and manage database structures — such as tables, indexes, and schemas.

# Main DDL Commands 

   * CREAT - Creates new database objects (like tables, views, or indexes). 

  Example:-  
             
          CREATE TABLE Students (ID INT, Name VARCHAR(50));

   * ALTER - Modifies the structure of an existing table (add, delete, or change columns).

  Example:- 

          ALTER TABLE Students ADD Email VARCHAR(100);

   * DROP - Deletes an entire database object permanently.

  Example:- 

           DROP TABLE Students;

   * TRUNCATE - Deletes all records from a table but keeps the table structure.

 Example:- 

          TRUNCATE TABLE Students;

 * RENAME - Changes the name of a database object.

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

# DQL (Data Query Language):

  It is mainly used to query (retrieve) data from a database.

  The most important DQL command is SELECT, which helps users fetch data based on specific conditions.

* SELECT (again): Retrieving data from one or more tables.

   The SELECT statement is used to extract data from database tables.

        SELECT column1, column2, ...
        FROM table_name
        WHERE condition;

* Aggregating data using functions like COUNT, SUM, AVG, MIN, MAX.
 
   Aggregate functions perform calculations on a set of values and return a single result.

Function            -                   	Meaning                                       -                         	Example

COUNT()     -                  	Counts number of rows	                     -                                SELECT COUNT(*) FROM Employees;

SUM()	      -                   Adds up numeric values	                   -                                SELECT SUM(Salary) FROM Employees;

AVG()       -                  	Calculates average value	                 -                                SELECT AVG(Salary) FROM Employees;

MIN()       -                  	Finds smallest value	                     -                                SELECT MIN(Salary) FROM Employees;

MAX()       -                  	Finds largest value	                       -                                SELECT MAX(Salary) FROM Employees;


       SELECT COUNT(*) AS TotalEmployees,
       AVG(Salary) AS AverageSalary,
       MAX(Salary) AS HighestSalary
       FROM Employees;

* Grouping data with GROUP BY.

   The GROUP BY clause groups rows that have the same values into summary rows — often used with aggregate functions.

      SELECT Department, COUNT(*) AS TotalEmployees, AVG(Salary) AS AvgSalary
      FROM Employees
      GROUP BY Department;

* Filtering aggregated data with HAVING.

    The HAVING clause filters the groups created by GROUP BY.

        SELECT Department, AVG(Salary) AS AvgSalary
        FROM Employees
        GROUP BY Department
        HAVING AVG(Salary) > 50000;

* Sorting results with ORDER BY.

    The ORDER BY clause sorts the result set in ascending (ASC) or descending (DESC) order.

        SELECT Name, Department, Salary 
        FROM Employees
        ORDER BY Salary DESC;
<img width="417" height="332" alt="image" src="https://github.com/user-attachments/assets/ca7cdbb2-cbe1-47f4-a7be-acc1b948b23d" />

# TCL (Transaction Control Language):

   It is used to manage transactions in a database and control the changes made by DML statements (INSERT, UPDATE , SELECT)

   A transaction is a set of SQL operations that are executed as a single unit of work.

# Main TCL Commands:

  COMMIT           -   Saves all the changes made by the transaction permanently in the database.

         INSERT INTO Employees VALUES (101, 'John', 'HR', 45000);
         COMMIT;

  ROLLBACK         -	 Undoes all the changes made in the current transaction (before COMMIT).

          DELETE FROM Employees WHERE Department = 'HR';
          ROLLBACK;

  SAVEPOINT        -   Sets a point within a transaction to which you can later roll back.

       BEGIN TRANSACTION;
       INSERT INTO Employees VALUES (102, 'Mary', 'Finance', 55000);
       SAVEPOINT sp1;
       UPDATE Employees SET Salary = 60000 WHERE EmpID = 102;
       ROLLBACK TO sp1;
       COMMIT;

  SET TRANSACTION  -    Defines the properties of a transaction, like read/write mode.

       SET TRANSACTION READ WRITE;  or   BEGIN TRANSACTION

<img width="381" height="324" alt="image" src="https://github.com/user-attachments/assets/68156b4d-8d87-431b-a81b-53aa0c1fe923" />

# Constraints: 

  Constraints in SQL are rules applied to table columns to ensure the accuracy, validity, and integrity of data in the  
  database.

 PRIMARY KEY  -  Ensures that each row in a table is unique and that the key column cannot contain NULL values.
                 Every table can have only one primary key.

                 CREATE TABLE Students (
                 StudentID INT PRIMARY KEY,
                  Name VARCHAR(50),
                  Age INT
                  );

FOREIGN KEY  -  Creates a relationship between two tables by linking a column in one table to the PRIMARY KEY of another.

          CREATE TABLE Orders (
          OrderID INT PRIMARY KEY,
          StudentID INT,
          FOREIGN KEY (StudentID) REFERENCES Students(StudentID)
          );

 UNIQUE -  Ensures all values in a column (or group of columns) are unique, but can have one NULL (unlike PRIMARY KEY).

         CREATE TABLE Employees (
          EmpID INT PRIMARY KEY,
          Email VARCHAR(100) UNIQUE
          );

 CHECK  -  Specifies a condition that each row must satisfy.
           Used to limit the range or format of values. 

         CREATE TABLE Products (
          ProductID INT PRIMARY KEY,
          Price DECIMAL(10,2),
          CHECK (Price > 0)
          );

NOT NULL  -  Ensures that a column cannot have NULL values (it must always contain data).

          CREATE TABLE Departments (
          DeptID INT PRIMARY KEY,
          DeptName VARCHAR(50) NOT NULL
          );
          
<img width="460" height="347" alt="image" src="https://github.com/user-attachments/assets/d23dbd24-668a-46fb-987e-22614034ce53" />

# Joins:

INNER JOIN  -  Combines rows from two or more tables where there is a match in both tables.

       SELECT Employees.EmpName, Departments.DeptName
       FROM Employees
       INNER JOIN Departments
       ON Employees.DeptID = Departments.DeptID;

LEFT JOIN  - Returns all records from the left table and matching records from the right table. Non-matching right table values show as NULL.

       SELECT Employees.EmpName, Departments.DeptName
       FROM Employees
       LEFT JOIN Departments
       ON Employees.DeptID = Departments.DeptID;

RIGHT JOIN - Returns all records from the right table and matching records from the left table.

       SELECT Employees.EmpName, Departments.DeptName
       FROM Employees
       RIGHT JOIN Departments
       ON Employees.DeptID = Departments.DeptID;

FULL JOIN - Combines results of both LEFT and RIGHT joins. Returns all records when there is a match in either table.

      SELECT Employees.EmpName, Departments.DeptName
      FROM Employees
      FULL OUTER JOIN Departments
      ON Employees.DeptID = Departments.DeptID;

CROSS JOIN - Produces the Cartesian product — every row from one table combined with every row from the other.

      SELECT Employees.EmpName, Departments.DeptName
      FROM Employees
      CROSS JOIN Departments;

<img width="382" height="407" alt="image" src="https://github.com/user-attachments/assets/fdb78533-d2ed-4c25-9fce-07c0faae41fb" />

# SQL Aggregation Function:

 It is used to perform calculations on multiple rows of a single column of a table. It returns single value.

 * It is also used to summarize the data.

# Types of SQL Aggrgation Function

  * SUM
  * AVERAGE
  * MAXIMUM
  * MINIMUM
  * COUNT

* SUM :- It is used to calculate the sum of all calculated columns. And it works on numeric fields only.
                        (or)
         To Calculate the sum of total numeric value.

          select sum(salary) from employees;
  
* AVERAGE :- To Calculate the Average value in numeric column.

         select Avg(salary) from employees;

* MAXIMUM :- To find the highest value in the selected column.

          select Max(salary) from employees;

* MINIMUM :- To find the smallest value in the selected coumn.

          select Min(salary) from employees;

# SQL Clauses

   A clause in SQL is a part of a query that performs a specific task 

   They help you control how data is retrieved or displayed from a database.

 * WHERE Clause
 * HAVING Clause
 * ORDER BY Clause
 * GROUP BY Clause

* WHERE Clause :- Filters rows before grouping or aggregation.

       select * from employees where score > 1000

* HAVING Clause :- Groups rows with the same values in specified columns.

        SELECT DeptID, SUM(Salary) FROM Employees
        GROUP BY DeptID
        HAVING SUM(Salary) > 100000;

* ORDER BY :- Sorts results in ascending or descending order.

         SELECT * FROM Employees ORDER BY Salary DESC;

* GROUP BY :- Groups rows with the same values in specified columns.

         SELECT DeptID, SUM(Salary) FROM Employees
         GROUP BY DeptID;
   
<img width="424" height="391" alt="image" src="https://github.com/user-attachments/assets/6a8fe6b9-d0fd-4945-8a26-6d99dfce2c69" />






  








  



  


 
  
  












  







 







    



