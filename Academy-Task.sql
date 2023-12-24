
-- Academy Database yaradilmasi

USE [master]
CREATE DATABASE [AcademyDB]

-- USE [master]
--DROP DATABASE AcademyDB

-- ======== ============ =========== =========== ============

-- Departments Table yaradilmasi

USE AcademyDB
CREATE TABLE Departments 
(
	Id int PRIMARY KEY IDENTITY(1,1),
	Financing money NOT NULL DEFAULT 0 CHECK ([Financing] >= 0),
	[Name] nvarchar(100) NOT NULL DEFAULT 'DefaultName',
)

INSERT INTO Departments (Financing, [Name]) VALUES ('1.98', 'Software Development');
INSERT INTO Departments (Financing, [Name]) VALUES ('5.34', 'Barista');
INSERT INTO Departments (Financing, [Name]) VALUES ('0.49', 'Tailor');
INSERT INTO Departments (Financing, [Name]) VALUES ('0.96', 'Driver');
INSERT INTO Departments (Financing, [Name]) VALUES ('0.52', 'Human Resource');
INSERT INTO Departments (Financing, [Name]) VALUES ('8.25', 'Hardware Development');
INSERT INTO Departments (Financing, [Name]) VALUES ('9.59', 'Bla Bla Bla');
INSERT INTO Departments (Financing, [Name]) VALUES ('0.87', 'Data aglima gelmirr');
INSERT INTO Departments (Financing, [Name]) VALUES ('7.66', 'Lenete gelmis mockaroo');
INSERT INTO Departments (Financing, [Name]) VALUES ('4.47', 'Fake department datasi yoxduuu');

-- DROP TABLE Departments

-- ======== ====== ========= ========== =========== =========== ========== 

-- Faculties Table yaradilmasi

USE AcademyDB
CREATE TABLE Faculties
(
	Id int PRIMARY KEY IDENTITY(1,1),
	Dean nvarchar(max) NOT NULL DEFAULT 'DefaultDean',
	[Name] nvarchar(100) NOT NULL DEFAULT 'DefaultName'
)

INSERT INTO Faculties (Dean, [Name]) VALUES ('Palmer', 'Marketing');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Sherwynd', 'Product Management');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Lilah', 'Human Resources');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Dante', 'Human Resources');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Reinwald', 'Marketing');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Nikita', 'Research and Development');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Zerk', 'Product Management');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Brandyn', 'Sales');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Tabbie', 'Marketing');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Kingsley', 'Marketing');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Becka', 'Accounting');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Fulvia', 'Training');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Gelya', 'Support');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Edmund', 'Research and Development');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Christyna', 'Sales');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Kirbie', 'Product Management');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Shermie', 'Engineering');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Daisy', 'Product Management');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Marsha', 'Engineering');
INSERT INTO Faculties (Dean, [Name]) VALUES ('Shanta', 'Business Development');

-- DROP TABLE Faculties

-- ========== ========== ============= ============= =============== =====

-- Groups Table yaradilmasi 

USE AcademyDB
CREATE TABLE Groups
(
	Id int PRIMARY KEY IDENTITY(1,1),
	[Name] nvarchar(10) NOT NULL DEFAULT 'DefaultName',
	Rating int NOT NULL CHECK(Rating BETWEEN 0 AND 5),
	[Year] int NOT NULL CHECK([Year] BETWEEN 1 AND 5)
)

INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Ora', 0, 3);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Jacinta', 1, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Valentia', 4, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Cyb', 5, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Sutherland', 3, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Sawyer', 2, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Fanechka', 5, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Stacee', 5, 3);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Aldridge', 3, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Agneta', 4, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Vivie', 5, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Cordey', 5, 3);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Jamesy', 4, 4);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Denis', 1, 1);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Ayn', 1, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Carlen', 1, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Rollie', 5, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Winfield', 2, 2);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Dalia', 2, 5);
INSERT INTO Groups ([Name], Rating, [Year]) VALUES ('Alexis', 2, 1);
	
--DROP TABLE Groups

-- ============== =============== =========== ============= ======== ======

-- Teachers Table yaradilmasi 

USE AcademyDB
CREATE TABLE Teachers 
(
	Id int PRIMARY KEY IDENTITY(1,1),
	EmploymentDate date NOT NULL CHECK(EmploymentDate >= '1990-01-01'),
	IsAssistant bit NOT NULL DEFAULT 0,
	IsProfessor bit NOT NULL DEFAULT 0,
	[Name] nvarchar(max) NOT NULL DEFAULT 'DefaultName',
	Position nvarchar(max) NOT NULL DEFAULT 'DefaultPosition',
	Premium money NOT NULL DEFAULT 0 CHECK(Premium >= 0),
	Salary money NOT NULL CHECK(Salary > 0),
	Surname nvarchar(max) NOT NULL DEFAULT 'DefSurname'
)

INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1999-04-26', 1, 1, 'Hyatt', 'Account Executive', '5.05', '2000', 'Biasotti');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2003-11-17', 0, 1, 'Tarrance', 'Software Consultant', '2.09', '1010', 'Chaim');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2009-01-29', 0, 1, 'Chrissie', 'General Manager', '9.37', '1010', 'Costall');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1991-03-02', 1, 1, 'Enoch', 'Human Resources Manager', '1.61', '2000', 'Burland');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2001-07-07', 0, 1, 'Teriann', 'Recruiter', '7.08', '830', 'Colnett');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2007-03-16', 1, 1, 'Abbey', 'Civil Engineer', '1.80', '1010', 'Schwander');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1999-01-24', 0, 1, 'Langsdon', 'Web Designer III', '1.85', '830', 'Episcopi');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2010-04-26', 1, 1, 'Leia', 'Geological Engineer', '0.34', '2000', 'Croxon');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1991-01-28', 0, 1, 'Peggi', 'Design Engineer', '3.75', '830', 'Skyram');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2006-11-29', 1, 1, 'Rafe', 'Executive Secretary', '8.91', '830', 'Garthshore');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2012-02-20', 0, 1, 'Jeanine', 'Information Systems Manager', '8.69', '1010', 'Groucutt');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1995-10-19', 1, 1, 'Elton', 'Recruiting Manager', '2.71', '9.77', 'Litster');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2003-03-26', 0, 0, 'Yul', 'Staff Accountant III', '7.79', '2000', 'Southerns');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2004-07-18', 1, 1, 'Farah', 'Teacher', '1.83', '830', 'Ions');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1999-08-03', 1, 1, 'Jae', 'Food Chemist', '4.89', '830', 'Craufurd');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2005-10-13', 0, 1, 'Neda', 'Nuclear Power Engineer', '5.85', '830', 'Durran');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1996-06-05', 1, 1, 'Wren', 'Budget/Accounting Analyst II', '9.00', '1010', 'Perle');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2002-08-31', 0, 0, 'Hi', 'Help Desk Technician', '2.09', '2000', 'Chatelet');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('1999-10-31', 0, 0, 'Rip', 'VP Quality Control', '4.06', '830', 'Harsent');
INSERT INTO Teachers (EmploymentDate, IsAssistant, IsProfessor, [Name], Position, Premium, Salary, Surname) VALUES ('2021-10-06', 1, 1, 'Reginauld', 'Senior Sales Associate', '6.06', '2000', 'Tillett');

--DROP TABLE Teachers

-- ============= ============== ================= ================= ========

-- Task 1. Print departments table but arrange its fields in the reverse order.

SELECT *
FROM departments
ORDER BY Financing DESC;

-- ============= ============= ============== ============= ============= ===

-- Task 2. Print group names and their ratings using “Group Name”
-- and “Group Rating”, respectively, as names of the fields.

SELECT [Name] AS 'Group Name', Rating AS 'Group Rating'
FROM Groups;

-- ============= ============== ================ ============== =============

-- Task 3. Print for the teachers their surname, percentage of wage rate
-- to premium ratio and percentage of wage rate to the salary ratio
-- (the amount of wage rate and premium).

SELECT 
    Surname,
    Premium / Salary * 100 AS 'Wage to Premium Ratio (%)',
    (Salary + Premium) / Salary * 100 AS 'Wage to Salary Ratio (%)'	
FROM Teachers;

-- ============= ================= ================ =============== =========

-- Task 4. Print the faculty table as a single field in the following format:
-- "The dean of faculty [faculty] is [dean]".

SELECT 'The dean of faculty ' + [Name] + ' is ' + Dean AS FacultyInfo
FROM Faculties;

-- ============== =============== ================ ============== ============

-- Task 5. Identify names of the teachers who are professors and whose
-- wage rate exceeds 1050.
	
SELECT [Name], Surname, Salary
FROM Teachers
WHERE IsProfessor = 1 AND Salary > 1050;


-- =============== =============== =============== ============== ============

-- Task 6. Print names of the departments whose funding is less than
-- 11,000 or more than 25,000.

SELECT [Name]
FROM Departments
WHERE Financing < 11000 OR Financing > 25000;


-- ======= ================= =============== ============== ==================

-- Task 7. Print names of faculties other than Computer Science.

SELECT [Name]
FROM Faculties
WHERE [Name] <> 'Computer Science';

-- ============= ================ ================== =============== ==========

-- Task 8. Print names and positions of teachers who are not professors.

SELECT [Name], Position
FROM Teachers
WHERE IsProfessor = 0;

-- =========== =========== ============== ============== ======================

-- Task 9. Print surnames, positions, wage rates, and premia of assistants
-- whose premium is in the range from 160 to 550.

SELECT Surname, Position, Salary, Premium
FROM Teachers
WHERE IsAssistant = 1 AND Premium BETWEEN 160 AND 550;

-- ========= ============ ============== ================== ===================

-- Task  10. Print surnames and wage rates of assistants.

SELECT Surname, Salary
FROM Teachers
WHERE IsAssistant = 1;

-- ========== ========== ================ ================== ===================

-- Task 11.Print surnames and positions of the teachers who were hired
-- before 01.01.2000.

SELECT Surname, Position
FROM Teachers
WHERE EmploymentDate < '2000-01-01';

-- ============= ================= ========== ============ ============== =======

-- Task 12.Print names of the departments in alphabetical order up
-- to the Software Development Department. The output field
-- should be named "Name of Department".

SELECT [Name] AS "Name of Department"
FROM Departments
WHERE [Name] <= 'Software Development'
ORDER BY [Name];

-- ============== =================== ================ =============== ===========

-- Task 13.Print names of the assistants whose salary (amount of wage
-- rate and premium) is not more than 1200.

SELECT [Name]
FROM Teachers
WHERE IsAssistant = 1 AND (Salary + Premium) <= 1200;

-- ================ =========== ================= ================== ============

--Task 14.Print names of groups of the 5th year whose rating is in the range
-- from 2 to 4.

SELECT [Name]
FROM Groups
WHERE [Year] = 5 AND Rating BETWEEN 2 AND 4;

-- ============= =========== ============== =========== =========================

--Task 15. Print names of assistants whose wage rate is less than 550 or
-- premium is less than 200.

SELECT [Name]
FROM Teachers
WHERE IsAssistant = 1 AND (Salary < 550 OR Premium < 200);


