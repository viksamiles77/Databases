--USE [SEDCACADEMYDB]

----Find all Students with FirstName = Antonio

--SELECT * 
--FROM dbo.Student
--WHERE FirstName = 'Antonio'


----Find all Students with DateOfBirth greater than ‘01.01.1999’

--SELECT *
--FROM dbo.Student
--WHERE DateOfBirth > '1999-01-01'


----Find all Students with LastName starting With ‘J’ enrolled in January/1998

--SELECT *
--FROM dbo.Student
--WHERE LastName LIKE 'J%'
--AND EnrolledDate >= '1998-01-01'
--AND EnrolledDate < '1998-02-01'


----List all Students ordered by FirstName

--SELECT *
--FROM dbo.Student
--ORDER BY FirstName


----List all Teacher Last Names and Student Last Names in single result set. Remove duplicates

--SELECT LastName
--FROM dbo.Student
--UNION
--SELECT LastName
--FROM dbo.Teacher


----Create Foreign key constraints from diagram or with script
--I created the Foreign keys with diagram


----List all possible combinations of Courses names and AchievementType names that can be passed by student

--SELECT c.Name, at.Name
--FROM dbo.Course c
--CROSS JOIN dbo.AchievementType at


----List all Teachers without exam Grade

--SELECT t.FirstName, t.LastName, g.Grade
--FROM dbo.Teacher t
--LEFT JOIN Grade g
--ON t.ID = g.TeacherID
--WHERE g.Grade IS NULL
