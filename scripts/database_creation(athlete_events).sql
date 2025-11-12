CREATE DATABASE OlympicsDB;
GO
USE OlympicsDB;
GO
CREATE TABLE athlete_events (
    ID INT NOT NULL,
    Name NVARCHAR(500) NOT NULL,
    Sex CHAR(1) NOT NULL,
    Age FLOAT NULL,        
    Height FLOAT NULL,
    Weight FLOAT NULL,
    Team NVARCHAR(255) NOT NULL,
    NOC NVARCHAR(10) NOT NULL,
    Games NVARCHAR(50) NOT NULL,
    Year INT NOT NULL,
    Season NVARCHAR(20) NOT NULL,
    City NVARCHAR(100) NOT NULL,
    Sport NVARCHAR(100) NOT NULL,
    Event NVARCHAR(500) NOT NULL,
    Medal NVARCHAR(50) NULL,
    CONSTRAINT PK_athlete PRIMARY KEY (ID, Year, Event)
);

select * from athlete_events;

SELECT @@SERVERNAME AS ServerName;
