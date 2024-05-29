----Declare scalar variable for storing FirstName values

--DECLARE @FirstName nvarchar(20)


----Assign value ‘Antonio’ to the FirstName variable
--SET @FirstName = N'Antonio'

----Find all Students having FirstName same as the variable

--SELECT *
--FROM Student s
--WHERE s.FirstName = @FirstName


----Declare table variable that will contain StudentId, StudentName and DateOfBirth

--DECLARE @BonusTable TABLE(
--StudentId INT,
--StudentName NVARCHAR(100),
--DateOfBirth DATE
--)


----Fill the table variable with all Female students

--INSERT INTO @BonusTable (StudentId, StudentName, DateOfBirth)
--SELECT ID, FirstName, DateOfBirth
--FROM Student
--WHERE Gender = 'F'
--SELECT *
--FROM @BonusTable


----Declare temp table that will contain LastName and EnrolledDate columns

--CREATE TABLE #TempStudent (
--LastName NVARCHAR(100),
--EnrolledDate DATE
--)


----Fill the temp table with all Male students having First Name starting with ‘A’

----INSERT INTO #TempStudent (LastName, EnrolledDate)
----SELECT LastName, EnrolledDate
----FROM Student
--WHERE Gender = 'M' AND FirstName LIKE 'A%'

----Verify the insertion
--SELECT *
--FROM #TempStudent


----Retrieve the students from the table which last name is with 7 characters
--SELECT LastName, EnrolledDate
--FROM #TempStudent
--WHERE LEN(LastName) = 7


----Drop the table
--DROP TABLE #TempStudent


----Find all teachers whose FirstName length is less than 5 and the first 3 characters of their FirstName and LastName are the same

--SELECT *
--FROM Teacher t
--WHERE LEN(FirstName) < 5
--AND
--LEFT(FirstName, 3) = LEFT(LastName, 3)