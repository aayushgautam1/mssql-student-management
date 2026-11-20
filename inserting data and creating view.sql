--inserting data and creating view 
USE AdventureWorks2025;
GO

-- 1. Inserting sample data into tables
INSERT INTO dbo.Groups (GroupName, StudyYear, Faculty)
VALUES 
    (N'SE-24', 2, N'Faculty of Technology'),
    (N'CS-25', 1, N'Faculty of Informatics');

INSERT INTO dbo.Cities (GroupID, CityName, Region, Country)
VALUES 
    (1, N'Šiauliai', N'Šiauliai County', N'Lithuania'),
    (1, N'Vilnius', N'Vilnius County', N'Lithuania');

INSERT INTO dbo.Statuses (StatusName, Description, IsActive)
VALUES 
    (N'Active', N'Currently enrolled student', 1),
    (N'On Leave', N'Academic leave', 0);

-- 2. Inserting sample students referencing those IDs
INSERT INTO dbo.Students (FirstName, LastName, Email, GroupID, CityID, StatusID)
VALUES 
    (N'Aayush', N'Gautam', N'aayush.gautam@stud.vu.lt', 1, 1, 1),
    (N'Jonas', N'Kazlauskas', N'jonas.k@stud.vu.lt', 2, 2, 1);
GO

-- 3. Creating the View combining all tables
CREATE VIEW dbo.vw_StudentDetails AS
SELECT 
    s.StudentID,
    s.FirstName,
    s.LastName,
    s.Email,
    g.GroupName,
    g.StudyYear,
    g.Faculty,
    c.CityName,
    c.Country,
    st.StatusName,
    st.IsActive
FROM dbo.Students s
INNER JOIN dbo.Groups g ON s.GroupID = g.GroupID
INNER JOIN dbo.Cities c ON s.CityID = c.CityID
INNER JOIN dbo.Statuses st ON s.StatusID = st.StatusID;
GO
