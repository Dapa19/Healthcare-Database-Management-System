-- Get a detailed history of visits, including diagnosis and treatment WHERE Patient_id = 3
SELECT 
	CONCAT(p.FirstName,' ', p.LastName) AS PatientName,
    p.DateOfBirth, p.Gender,
    mr.VisitDate, mr.Diagnosis, mr.Treatment,
    CONCAT(d.FirstName, ' ', d.LastName) AS DoctorName, 
    d.Specialty
FROM 
    Patients p
JOIN 
    MedicalRecords mr ON p.PatientID = mr.PatientID
JOIN 
    Doctors d ON mr.DoctorID = d.DoctorID
WHERE 
    p.PatientID = 3
ORDER BY 
    mr.VisitDate DESC;


-- Count the number of appointments each doctor has handled
SELECT 
	d.DoctorID,
	CONCAT(d.FirstName,' ',d.LastName) AS DoctorName,
	d.Specialty,
    COUNT(a.AppointmentID) AS TotalAppointments
FROM 
    Doctors d
LEFT JOIN 
    Appointments a ON d.DoctorID = a.DoctorID
GROUP BY 
    d.DoctorID, d.FirstName, d.LastName, d.Specialty
ORDER BY 
    TotalAppointments DESC;


-- Get the total billing amount from Patient, WHERE Patient_id = 2
SELECT 
    p.PatientID,
	CONCAT(p.FirstName,' ', p.LastName) AS PatientName,
    SUM(b.Amount) AS TotalBilling
FROM 
    Patients p
JOIN 
    Billing b ON p.PatientID = b.PatientID
WHERE 
    p.PatientID = 2
GROUP BY 
    p.PatientID, p.FirstName, p.LastName;
