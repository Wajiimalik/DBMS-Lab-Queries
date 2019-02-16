--SELECT * FROM Table_Person_Data;
--SELECT * FROM Table_Subjects;

--Select t.[First Name], s.[Subject Name] from Table_Person_Data t, Table_Subjects s where s.[Subject Name]=t.[Subject Name] ;

--Select Table_Person_Data.[First Name], Table_Subjects.Teacher from Table_Person_Data INNER JOIN Table_Subjects ON Table_Person_Data.[Subject Name]=Table_Subjects.[Subject Name]

--Select t.[First Name],t.[Subject Name],s.[Subject Name] from Table_Person_Data t LEFT JOIN Table_Subjects s ON t.[Subject Name]=s.[Subject Name]

--Select t.[First Name],t.[Subject Name],s.[Subject Name] from Table_Person_Data t RIGHT JOIN Table_Subjects s ON t.[Subject Name]=s.[Subject Name]

--Select t.[First Name], t.[Subject Name]  ,s.[Subject Name] from Table_Person_Data t FULL OUTER JOIN Table_Subjects s ON t.[Subject Name]=s.[Subject Name]