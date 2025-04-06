USE Careconnect; -- Ensure you're using the correct database

CREATE TABLE Doctors (
    DoctorID INT IDENTITY(1,1) PRIMARY KEY, -- Auto-incrementing primary key
    DoctorName NVARCHAR(100) NOT NULL,
    Username NVARCHAR(50) NOT NULL,
    Password NVARCHAR(50) NOT NULL,
    Specialization NVARCHAR(100) NOT NULL,
    AvailabilityDays NVARCHAR(100) NOT NULL,
    Date DATE NOT NULL,
    Time TIME NOT NULL
);