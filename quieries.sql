-- -----------------------------------------------------------------
-- QUIERIES

-- 1

SELECT P.*
FROM Patients P
JOIN Admissions A ON P.PatientID = A.PatientID
WHERE A.AdmissionDate LIKE '%2020%' AND A.AdmissionDiagnosis = 'COVID-19';

-- 2

SELECT AppointmentDate, Status
FROM Appointments;

-- 3

SELECT P.FirstName, P.LastName, A.AdmissionDate, A.DischargeDate
FROM Patients P
JOIN Admissions A ON P.PatientID = A.PatientID
JOIN Physicians Ph ON A.ReferringPhysician = Ph.PhysicianID
WHERE Ph.FirstName = 'Dalal' AND Ph.LastName = 'Namnaqani';

-- 4

SELECT * 
FROM Physicians
WHERE Specialization = 'Neurology';

-- 5 

SELECT ContactNumber
FROM Nurses
WHERE Shift = 'Holiday';

-- 6

SELECT P.FirstName, P.LastName
FROM Patients P
JOIN Admissions A ON P.PatientID = A.PatientID
WHERE A.AdmissionDiagnosis = 'Cancer';

-- 7 

SELECT * 
FROM Insurance
WHERE CoverageLimit > 15000;

-- 8

SELECT T.Description
FROM Tests T
JOIN TestResults TR ON T.TestID = TR.TestID
JOIN Patients P ON TR.PatientID = P.PatientID
WHERE P.Address = 'Alsadad';

-- 9

SELECT P.* 
FROM Physicians P
JOIN Appointments A ON P.PhysicianID = A.PhysicianID
WHERE A.AppointmentDate = '2024-05-02' AND A.Status = 'Confirmed';

-- 10

SELECT P.ContactNumber
FROM Physicians P
JOIN Appointments A ON P.PhysicianID = A.PhysicianID
WHERE WEEKDAY(A.AppointmentDate) IN (5,6); 