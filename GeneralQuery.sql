------------------- BETWEEN -----------------

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent WHERE CGPA BETWEEN 3.2 and 4.0;

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent WHERE CGPA NOT BETWEEN 3.2 and 3.6;

--SELECT * FROM tbl_UniversityStudent WHERE FirstName BETWEEN 'I' AND 'Z';

--SELECT * FROM tbl_UniversityStudent WHERE FirstName NOT BETWEEN 'I' AND 'Z';



------------------- LIKE [ %, [], [-], _ ] -----------------

--SELECT * FROM tbl_UniversityStudent WHERE (CGPA BETWEEN 3.6 and 4.0) AND  FirstName NOT LIKE 'M%';

--SELECT * FROM tbl_UniversityStudent WHERE (CGPA BETWEEN 3.6 and 4.0) AND  FirstName NOT LIKE 'I_____';

--SELECT * FROM tbl_UniversityStudent WHERE (CGPA BETWEEN 3.6 and 4.0) AND NOT FirstName LIKE 'M%';

--SELECT * FROM tbl_UniversityStudent WHERE FirstName LIKE 'M%'OR LastName LIKE 'M%';

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent WHERE CGPA LIKE 3.85;

--SELECT * FROM tbl_UniversityStudent WHERE CGPA LIKE '3%';

--SELECT * FROM tbl_UniversityStudent WHERE FirstName LIKE '[MW]%';

--SELECT * FROM tbl_UniversityStudent WHERE FirstName LIKE '[M-W]%';

--SELECT * FROM tbl_UniversityStudent WHERE FirstName LIKE '[!MW]%';



------------------- IN -----------------

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent WHERE CGPA IN(3.85,3.96);



------------------- DISTINCT -----------------

--SELECT DISTINCT CGPA FROM tbl_UniversityStudent; 



------------------- AND OR -----------------

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent WHERE FirstName='Wajiha' OR CGPA>3.6;

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent WHERE FirstName='Wajiha' AND CGPA>=3.85;

--SELECT FirstName,LastName,CGPA FROM tbl_UniversityStudent 
--WHERE CGPA >= 3.6 AND (FirstName='Wajiha' OR FirstName='Ibshar');




------------------- ORDER BY -----------------

--SELECT FirstName, LastName FROM tbl_UniversityStudent ORDER BY CGPA DESC;

--SELECT FirstName, LastName FROM tbl_UniversityStudent ORDER BY FirstName DESC;

--SELECT FirstName, LastName FROM tbl_UniversityStudent ORDER BY FirstName ASC;




------------------- INSERT INTO / VALUES -----------------

----INSERT INTO tbl_UniversityStudent (FirstName,LastName,University,Class, RollNumber,Batch,CGPA,Course)
----VALUES('Muhammad Yaseen','Aftab','NED','SE','CS-050','12-13',3.96,'DS');

--SELECT * FROM tbl_UniversityStudent;




------------------- UPDATE / SET  -----------------

--UPDATE tbl_UniversityStudent SET LastName='Ghani' WHERE FirstName='Sana' AND RollNumber='CS-011';

--UPDATE tbl_UniversityStudent SET CGPA=3.85 WHERE FirstName='Wajiha' AND RollNumber='CS-013';

--SELECT * FROM tbl_UniversityStudent;




------------------- DELETE  FROM -----------------

----DELETE FROM tbl_UniversityStudent WHERE CGPA > 3.7;

--SELECT * FROM tbl_UniversityStudent;

--SELECT * FROM tbl_CourseDetails



------------------- TOP / PERCENT  -----------------

--SELECT TOP 3 * FROM tbl_UniversityStudent;

--SELECT TOP 3 * FROM tbl_UniversityStudent ORDER BY CGPA DESC;

--SELECT TOP 50 PERCENT * FROM tbl_UniversityStudent;




------------------- ALIASES [AS]  [Tables n Cols both] -----------------

--SELECT TOP 3 FirstName AS [Top 3 Students] FROM tbl_UniversityStudent ORDER BY CGPA DESC;

--SELECT FirstName AS [Student Name], LastName AS [Father's Name] FROM tbl_UniversityStudent;

--SELECT FirstName + ' ' + LastName AS [Full Name] FROM tbl_UniversityStudent;

--SELECT FirstName + ' ' + LastName AS [Full Name], University + ' - ' + RollNumber + ' - ' + Batch AS [Enrollment Number] 
--FROM tbl_UniversityStudent;

---- Two Tables Data Join --		--Linking via Course n Subjects Column--

--SELECT us.FirstName + ' ' + us.LastName AS [Student Name], cd.Books AS [Book Read] 
--FROM tbl_UniversityStudent AS us, tbl_CourseDetails AS cd 
--WHERE us.Course=cd.Subjects;




-------------------  JOIN or INNER JOIN -----------------

--SELECT us.FirstName + ' ' + us.LastName AS [Student Name], cd.Books AS [Book Read] 
--FROM tbl_UniversityStudent AS us INNER JOIN tbl_CourseDetails AS cd ON us.Course=cd.Subjects;

----  With ORDER BY --
--SELECT us.FirstName + ' ' + us.LastName AS [Student Name], cd.Books AS [Book Read] 
--FROM tbl_UniversityStudent AS us INNER JOIN tbl_CourseDetails AS cd ON us.Course=cd.Subjects ORDER BY us.CGPA DESC;





-------------------  LEFT OUTER JOIN -----------------

--SELECT us.FirstName + ' ' + us.LastName AS [Student Name], cd.Books AS [Book Read] 
--FROM tbl_UniversityStudent AS us LEFT OUTER JOIN tbl_CourseDetails AS cd ON us.Course=cd.Subjects ORDER BY us.CGPA DESC;




-------------------  RIGHT OUTER JOIN -----------------

--SELECT us.FirstName + ' ' + us.LastName AS [Student Name], cd.Books AS [Book Read] 
--FROM tbl_UniversityStudent AS us RIGHT OUTER JOIN tbl_CourseDetails AS cd ON us.Course=cd.Subjects ORDER BY us.CGPA DESC;




-------------------  FULL JOIN -----------------

--SELECT us.FirstName + ' ' + us.LastName AS [Student Name], cd.Books AS [Book Read] 
--FROM tbl_UniversityStudent AS us FULL JOIN tbl_CourseDetails AS cd ON us.Course=cd.Subjects ORDER BY us.CGPA DESC;




-------------------  UNION / ALL -----------------
----No of Cols must be same in both SELECT clause, must be of same DT,  the columns in each SELECT statement must be in the same order.

--SELECT FirstName, Course FROM tbl_UniversityStudent 
--UNION ALL
--SELECT Books, Subjects FROM tbl_CourseDetails; 


--SELECT FirstName FROM tbl_UniversityStudent 
--UNION ALL
--SELECT LastName FROM tbl_UniversityStudent





-------------------  SELECT INTO [new table from existing] -----------------

----SELECT * INTO newtbl_UniversityStudent FROM tbl_UniversityStudent;

----new empty Table LOL
----SELECT * INTO newtbl_UniversityStudent FROM tbl_UniversityStudent WHERE 1=0;

----Insert few cols in existing table existig col --NOTE : make Names col in this table first
----INSERT INTO tbl_CourseDetails(Names)
----SELECT FirstName + ' ' + LastName FROM tbl_UniversityStudent; 




-------------------  New DB -----------------

----CREATE DATABASE NewDBLOL;




-------------------  New Table -----------------
--/*
--CREATE TABLE tbl_Person
--(
--	PersonID int,
--	Name varchar(50),
--	Address varchar(50),
--)
--*/




-------------------  New Table with CONSTRAINTs -----------------

---- 1. -----------------  NOT NULL -----------------
--/*
--CREATE TABLE tbl_Person
--(
--	PersonID int NOT NULL,
--	Name varchar(50),
--	Address varchar(50) NOT NULL,
--);
--*/



---- 2. ----------------- UNIQUE -----------------

--/*
--CREATE TABLE tbl_Person
--(
--	PersonID int NOT NULL UNIQUE,
--	Name varchar(50),
--	Address varchar(50) NOT NULL UNIQUE,
--);
--*/


--/*
---- In already made table [1 col]
--ALTER TABLE tbl_Person
--ADD UNIQUE (PersonID);


---- In already made table [more than 1 col]
--ALTER TABLE tbl_Person
--ADD CONSTRAINT makingUnique UNIQUE (PersonID,Address);


---- Removing constraint
--ALTER TABLE tbl_Person
--DROP CONSTRAINT makingUnique;



---- 3. ----------------- PRIMARY KEY -----------------

--/*
--CREATE TABLE tbl_Person
--(
--	PersonID int NOT NULL PRIMARY KEY,
--	Name varchar(50),
--	Address varchar(50) NOT NULL,
--);
--*/

---- In already made table [1 col]
--ALTER TABLE tbl_Person
--ADD PRIMARY KEY (PersonID);


---- In already made table [more than 1 col]
--ALTER TABLE tbl_Person
--ADD CONSTRAINT priKey PRIMARY KEY (PersonID, Address);


---- Removing constraint
--ALTER TABLE tbl_Person
--DROP CONSTRAINT priKey;



---- 4. ----------------- FOREIGN KEY -----------------
--ALTER TABLE tbl_Person 
--ADD Foreign KEY (PersonID)
--REFERENCES tbl_UniversityStudent (StudentID)
--*/