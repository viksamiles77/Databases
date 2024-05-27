----Calculate the count of all grades per Teacher in the system

--SELECT t.ID, t.FirstName, t.LastName, COUNT(Grade)
--FROM Grade g
--INNER JOIN Teacher t ON t.ID = g.TeacherID
--GROUP BY t.ID, t.FirstName, t.LastName


----Calculate the count of all grades per Teacher in the system for first 100 Students (ID < 100)

--SELECT t.ID, t.FirstName, t.LastName, COUNT(g.GRADE)
--FROM Grade g
--INNER JOIN Teacher t ON t.ID = g.TeacherID
--INNER JOIN Student s ON s.ID = g.StudentID
--WHERE s.ID < 100
--GROUP BY t.ID, t.FirstName, t.LastName


----Find the Maximal Grade, and the Average Grade per Student on all grades in the system

--SELECT s.ID, s.FirstName, s.LastName, MAX(g.Grade) as MaxGrade, AVG(Grade) as AverageGrade
--FROM Grade g 
--INNER JOIN Student s ON s.ID = g.StudentID
--GROUP BY s.ID, s.FirstName, s.LastName


----Calculate the count of all grades per Teacher in the system and filter only grade count greater then 200

--SELECT t.ID, t.FirstName, t.LastName, COUNT(g.Grade) AS GradeCount
--FROM Grade g
--INNER JOIN Teacher t ON t.ID = g.TeacherID
--GROUP BY t.ID, t.FirstName, t.LastName
--HAVING COUNT(g.Grade) > 200


----Find the Grade Count, Maximal Grade, and the Average Grade per Student on all 
----grades in the system. Filter only records where Maximal Grade is equal to Average Grade

----List Student First Name and Last Name next to the other details from previous query

--SELECT 
--	 s.ID 
--	 ,s.FirstName
--	 ,s.LastName 
--	 ,COUNT(g.Grade) AS GradeCount
--	 ,MAX(g.Grade) AS MaxGrade
--	 ,AVG(g.Grade) AS AverageGrade
--FROM 
--	 Grade g 
--INNER JOIN 
--	 Student s ON s.Id = g.StudentID
--GROUP BY 
--	 s.ID, s.FirstName, s.LastName
--HAVING 
--	 MAX(g.Grade) = AVG(g.Grade)


----Create new view (vv_StudentGrades) that will List all StudentIds and count of Grades per student

--CREATE VIEW [dbo].[vv_StudentGrades]
--AS
--SELECT s.ID, COUNT(g.Grade) AS GradeCount
--FROM Grade g
--INNER JOIN Student s ON s.ID = g.StudentID
--GROUP BY s.ID


----Change the view to show Student First and Last Names instead of StudentID

--ALTER VIEW [dbo].[vv_StudentGrades]
--AS
--SELECT s.FirstName, s.LastName, COUNT(g.Grade) AS GradeCount
--FROM Grade g
--INNER JOIN Student s ON s.ID = g.StudentID
--GROUP BY s.FirstName, s.LastName
--GO


----List all rows from view ordered by biggest Grade Count

--SELECT *
--FROM [dbo].[vv_StudentGrades]
--ORDER BY GradeCount DESC