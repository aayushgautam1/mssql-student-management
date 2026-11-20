USE AdventureWorks2025;
GO

DROP TABLE IF EXISTS dbo.Students;
DROP TABLE IF EXISTS dbo.Statuses;
DROP TABLE IF EXISTS dbo.Groups;
GO

CREATE TABLE dbo.Groups (
    GroupID INT IDENTITY(1,1) PRIMARY KEY,
    GroupName NVARCHAR(50) NOT NULL,
    StudyYear INT NOT NULL,
    Faculty NVARCHAR(100) NOT NULL
);

CREATE TABLE dbo.Statuses (
    StatusID INT IDENTITY(1,1) PRIMARY KEY,
    StatusName NVARCHAR(30) NOT NULL,
    Description NVARCHAR(150) NULL,
    IsActive BIT NOT NULL DEFAULT 1
);

CREATE TABLE dbo.Students (
    StudentID INT IDENTITY(1,1) PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
    LastName NVARCHAR(50) NOT NULL,
    Email NVARCHAR(100) NOT NULL,
    GroupID INT NOT NULL,
    CityID INT NOT NULL,
    StatusID INT NOT NULL
);
GO
