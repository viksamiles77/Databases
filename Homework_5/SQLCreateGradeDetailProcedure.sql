----Create new procedure called CreateGradeDetail
CREATE PROCEDURE CreateGradeDetail
@GradeID INT,
@AchievementTypeID INT,
@AchievementPoints INT,
@AchievementMaxPoints INT,
@AchievementDate DATE,
@ParticipationRate INT
AS
BEGIN

----Procedure should add details for specific Grade (new record for new AchievementTypeID, Points, MaxPoints, Date for specific Grade);
INSERT INTO GradeDetails(GradeID, AchievementTypeID, AchievementPoints, AchievementMaxPoints, AchievementDate)
VALUES(@GradeID, @AchievementTypeID, @AchievementPoints, @AchievementMaxPoints, @AchievementDate)

----Output from this procedure should be resultset with SUM of GradePoints calculated with 
----formula AchievementPoints/AchievementMaxPoints*ParticipationRate for specific Grade
SELECT SUM(AchievementPoints / AchievementMaxPoints * @ParticipationRate)
FROM GradeDetails
WHERE GradeId = @GradeID

END
