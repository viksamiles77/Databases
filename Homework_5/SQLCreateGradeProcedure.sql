----Create new procedure called CreateGrade;
CREATE PROCEDURE CreateGrade
@StudentId INT,
@CourseId INT,
@TeacherId INT,
@Grade INT,
@Comment NVARCHAR(MAX),
@CreatedDate DATE
AS
BEGIN

----Procedure should create only Grade header info (not Grade Details);
INSERT INTO Grade (StudentID, CourseID, TeacherID, Grade, Comment, CreatedDate)
VALUES (@StudentId, @CourseId, @TeacherId, @Grade, @Comment, @CreatedDate)

----Procedure should return the total number of grades in the system for the Student on input (from the CreateGrade);
SELECT COUNT(*) AS TotalGrades
FROM Grade
WHERE StudentID = @StudentId;

----Procedure should return second resultset with the MAX Grade of all grades for the Student and Teacher on input (regardless the Course).
SELECT MAX(Grade) AS MaxGrade
FROM Grade
WHERE StudentID = @StudentId 
AND
TeacherID = @TeacherId

END