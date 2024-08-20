-- Patients Table
CREATE TABLE Patients (
    PatientID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    DateOfBirth DATE,
    Gender VARCHAR(10),
    ContactInfo VARCHAR(100)
);

-- Doctors Table
CREATE TABLE Doctors (
    DoctorID INT PRIMARY KEY,
    FirstName VARCHAR(50),
    LastName VARCHAR(50),
    Specialty VARCHAR(50),
    ContactInfo VARCHAR(100)
);

-- Appointments Table
CREATE TABLE Appointments (
    AppointmentID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    AppointmentDateTime DATETIME,
    Status VARCHAR(20),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Medical Records Table
CREATE TABLE MedicalRecords (
    RecordID INT PRIMARY KEY,
    PatientID INT,
    DoctorID INT,
    VisitDate DATE,
    Diagnosis VARCHAR(100),
    Treatment VARCHAR(100),
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (DoctorID) REFERENCES Doctors(DoctorID)
);

-- Billing Table
CREATE TABLE Billing (
    BillingID INT PRIMARY KEY,
    PatientID INT,
    AppointmentID INT,
    Amount DECIMAL(10, 2),
    PaymentDate DATE,
    FOREIGN KEY (PatientID) REFERENCES Patients(PatientID),
    FOREIGN KEY (AppointmentID) REFERENCES Appointments(AppointmentID)
);

-- Insert Dummy Data
INSERT INTO Patients (PatientID, FirstName, LastName, DateOfBirth, Gender, ContactInfo)
VALUES
(1, 'John', 'Doe', '1985-04-23', 'Male', 'john.doe@example.com'),
(2, 'Jane', 'Smith', '1990-07-15', 'Female', 'jane.smith@example.com'),
(3, 'Alice', 'Johnson', '1978-09-12', 'Female', 'alice.johnson@example.com'),
(4, 'Bob', 'Brown', '1969-01-30', 'Male', 'bob.brown@example.com'),
(5, 'Charlie', 'Davis', '2000-03-10', 'Male', 'charlie.davis@example.com');

INSERT INTO Doctors (DoctorID, FirstName, LastName, Specialty, ContactInfo)
VALUES
(1, 'Dr. Emily', 'Clark', 'Cardiology', 'emily.clark@hospital.com'),
(2, 'Dr. Michael', 'Evans', 'Neurology', 'michael.evans@hospital.com'),
(3, 'Dr. Sarah', 'Lee', 'Pediatrics', 'sarah.lee@hospital.com'),
(4, 'Dr. James', 'Wilson', 'Orthopedics', 'james.wilson@hospital.com'),
(5, 'Dr. Linda', 'White', 'Dermatology', 'linda.white@hospital.com');

INSERT INTO Appointments (AppointmentID, PatientID, DoctorID, AppointmentDateTime, Status)
VALUES
(1, 1, 1, '2024-08-15 10:00:00', 'Completed'),
(2, 2, 2, '2024-08-16 11:00:00', 'Scheduled'),
(3, 3, 3, '2024-08-17 09:00:00', 'Completed'),
(4, 4, 4, '2024-08-18 14:00:00', 'Scheduled'),
(5, 5, 5, '2024-08-19 13:00:00', 'Completed');

INSERT INTO MedicalRecords (RecordID, PatientID, DoctorID, VisitDate, Diagnosis, Treatment)
VALUES
(1, 1, 1, '2024-08-15', 'Hypertension', 'Prescribed medication'),
(2, 3, 3, '2024-08-17', 'Flu', 'Rest and fluids'),
(3, 5, 5, '2024-08-19', 'Acne', 'Topical treatment'),
(4, 2, 2, '2024-08-16', 'Migraine', 'Prescribed medication'),
(5, 4, 4, '2024-08-18', 'Fracture', 'Cast and rest');

INSERT INTO Billing (BillingID, PatientID, AppointmentID, Amount, PaymentDate)
VALUES
(1, 1, 1, 150.00, '2024-08-15'),
(2, 3, 3, 50.00, '2024-08-17'),
(3, 5, 5, 75.00, '2024-08-19'),
(4, 2, 2, 120.00, '2024-08-16'),
(5, 4, 4, 200.00, '2024-08-18');
