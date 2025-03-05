CREATE TABLE PatientAdmissions (
    PatientID INT IDENTITY(1,1) PRIMARY KEY,
    PatientName NVARCHAR(100) NOT NULL,
    GuardianName NVARCHAR(100) NOT NULL,
    DaysToAdmit INT NOT NULL,
    TotalCharges DECIMAL(18, 2) NOT NULL,
    PhoneNumber NVARCHAR(15) NOT NULL
);