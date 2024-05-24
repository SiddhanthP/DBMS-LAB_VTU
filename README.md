*DBMS-LAB_VTU 3rd YEAR DBMS LAB PROGRAMS (21CSL55)*

### 1. Library Database
**Schema:**
- **BOOK:** (Title, Pub_Year, Publisher_Name)
- **BOOK_AUTHORS:** (Book_id, Author_Name)
- **PUBLISHER:** (Name, Address, Phone)
- **BOOK_COPIES:** (Book_id, Programme_id, No-of_Copies)
- **BOOK_LENDING:** (Book_id, Programme_id, Card_No, Date_Out, Due_Date)
- **LIBRARY_PROGRAMME:** (Programme_id, Programme_Name, Address)

**SQL Queries:**
1. Retrieve details of all books in the library – id, title, name of publisher, authors, number of copies in each Programme, etc.
2. Get the particulars of borrowers who have borrowed more than 3 books, but from Jan 2017 to Jun 2017.
3. Delete a book in the BOOK table. Update the contents of other tables to reflect this data manipulation operation.
4. Partition the BOOK table based on the year of publication. Demonstrate its working with a simple query.
5. Create a view of all books and its number of copies that are currently available in the library.


### 2. Order Database
**Schema:**
- **SALESMAN:** (Salesman_id, Name, City, Commission)
- **CUSTOMER:** (Customer_id, Cust_Name, City, Grade, Salesman_id)
- **ORDERS:** (Ord_No, Purchase_Amt, Ord_Date, Customer_id, Salesman_id)

**SQL Queries:**
1. Count the customers with grades above Bangalore's average.
2. Find the name and numbers of all salesmen who had more than one customer.
3. List all the salesmen and indicate those who have and don’t have customers in their cities (Use UNION operation).
4. Create a view that finds the salesman who has the customer with the highest order of a day.
5. Demonstrate the DELETE operation by removing a salesman with id 1000. All his orders must also be deleted.


### 3. Movie Database
**Schema:**
- **ACTOR:** (Act_id, Act_Name, Act_Gender)
- **DIRECTOR:** (Dir_id, Dir_Name, Dir_Phone)
- **MOVIES:** (Mov_id, Mov_Title, Mov_Year, Mov_Lang, Dir_id)
- **MOVIE_CAST:** (Act_id, Mov_id, Role)
- **RATING:** (Mov_id, Rev_Stars)

**SQL Queries:**
1. List the titles of all movies directed by 'Hitchcock'.
2. Find the movie names where one or more actors acted in two or more movies.
3. List all actors who acted in a movie before 2000 and also in a movie after 2015 (use JOIN operation).
4. Find the title of movies and number of stars for each movie that has at least one rating and find the highest number of stars that movie received. Sort the result by movie title.
5. Update the rating of all movies directed by 'Steven Spielberg' to 5.


### 4. College Database
**Schema:**
- **STUDENT:** (USN, SName, Address, Phone, Gender)
- **SEMSEC:** (SSID, Sem, Sec)
- **CLASS:** (USN, SSID)
- **COURSE:** (Subcode, Title, Sem, Credits)
- **IAMARKS:** (USN, Subcode, SSID, Test1, Test2, Test3, FinalIA)

**SQL Queries:**
1. List all the student details studying in the fourth semester 'C' section.
2. Compute the total number of male and female students in each semester and in each section.
3. Create a view of Test1 marks of student USN '1BI15CS101' in all courses.
4. Calculate the FinalIA (average of best two tests' marks) and update the corresponding table for all students.
5. Categorize students based on the following criteria:
   - If FinalIA = 17 to 20 then CAT = 'Outstanding'
   - If FinalIA = 12 to 16 then CAT = 'Average'
   - If FinalIA < 12 then CAT = 'Weak'
   - Provide these details only for the 8th semester A, B, and C section students.


### 5. Company Database
**Schema:**
- **EMPLOYEE:** (SSN, Name, Address, Sex, Salary, SuperSSN, DNo)
- **DEPARTMENT:** (DNo, DName, MgrSSN, MgrStartDate)
- **PROJECT:** (PNo, PName, PLocation, DNo)
- **DLOCATION:** (DNo, DLoc)
- **WORKS_ON:** (SSN, PNo, Hours)

**SQL Queries:**
1. Make a list of all project numbers for projects that involve an employee whose last name is 'Scott', either as a worker or as a manager of the department that controls the project.
2. Show the resulting salaries if every employee working on the 'IoT' project is given a 10 percent raise.
3. Find the sum of the salaries of all employees of the 'Accounts' department, as well as the maximum salary, the minimum salary, and the average salary in this department.
4. Retrieve the name of each employee who works on all the projects controlled by department number 5 (use NOT EXISTS operator).
5. For each department that has more than five employees, retrieve the department number and the number of its employees who are making more than Rs. 6,00,000.
