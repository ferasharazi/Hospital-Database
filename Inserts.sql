-- -----------------------------------------------------------------
-- INSERT

INSERT INTO Insurance(PolicyNumber, InsuranceName, CoverageLimit) VALUES
(12341, 'Tawuniya', 50000),
(12342, 'Tawuniya', 15000),
(12343, 'Bupa Arabia', 20000),
(12345, 'Bupa Arabia', 12000),
(12346, 'Bupa Arabia', 9000),
(12347, 'Bupa Arabia', 8500),
(12348, 'Tawuniya', 55000),
(12349, 'Tawuniya', 70000),
(12340, 'Tawuniya', 6500),
(12344, 'Bupa Arabia', 7200);

INSERT INTO Patients(PatientID, FirstName, LastName, DateOfBirth, Gender, ContacNumber, EmergencyContactNumber, Address, InsurancePolicyNumber) VALUES
('1234567899', 'Sara', 'Tariq', '1977-05-15', 'F', '0554532675', '0563345642', 'Alsalama', 12341),
('9987654321', 'Noor', 'Ali', '1980-04-11', 'F', '0578767653', '0534543567', 'Alaqiq', 12342),
('2233445566', 'Ali', 'Tariq', '1988-02-10', 'M', '0554433216', '0566676678', 'Alsadad', 12343),
('1122337789', 'Ziyad', 'Ali', '1990-01-15', 'M', '0566832231', '0566321234', 'Almuthanna', 12345),
('9022020239', 'Khaled', 'Salman', '1999-02-19', 'M', '0567891234', '0564445436', 'Qarawi', 12346),
('2345654368', 'Mahmoud', 'Tariq', '1970-02-05', 'M', '0555554321', '0566676789', 'Alkhaldiyeh', 12347),
('5433459999', 'Mohammed', 'Ali', '1969-06-25', 'M', '0567889898', '0512345454', 'Aljal', 12348),
('4433218887', 'Salman', 'Yazan', '1998-07-11', 'M', '0589898989', '0544443324', 'Qamriya', 12349),
('9988998067', 'Fatima', 'Mohammed', '1996-06-12', 'F', '0553432123', '0567898789', 'Alwisam', 12340),
('2823443211', 'Selma', 'Ali', '1992-01-18', 'F', '0543334320',  '0550553352', 'Alnozha', 12344);

INSERT INTO Physicians(PhysicianID, FirstName, LastName, Specialization, ContactNumber, Email) VALUES
('5897432016', 'Mohammed', 'Ali', 'Pneumonia', '0501234567', 'mohammed.ali@gmail.com'),
('4169287350', 'Leila', 'Hassan', 'Fractured leg', '0523456789', 'leila.hassan@gmail.com'),
('2738501946', 'Ahmed', 'Khalid', 'Appendicitis', '0545678901', 'ahmed.khalid@gmail.com'),
('7946132085', 'Dalal', 'Namnaqani', 'Neurology', '0556789012', 'Dalal_Namnaqani@gmail.com'),
('3250984716', 'Youssef', 'Abbas', 'Gastroenteritis', '0567890123', 'youssef.abbas@gmail.com'),
('8071259364', 'Sarah', 'Mahmoud', 'Bronchitis', '0578901234', 'sarah.mahmoud@gmail.com'),
('6421793580', 'Omar', 'Abdullah', 'Kidney stones', '0589012345', 'omar.abdullah@gmail.com'),
('1982674305', 'Reema', 'Abdelwahab', 'Migraine', '0590123456', 'reema.abdelwahab@gmail.com'),
('7354021869', 'Khaled', 'Mohammed', 'Diabetes', '0512345678', 'khaled.mohammed@gmail.com'),
('1209835746', 'Hadeel', 'Ali', 'Hypertension', '0534567890', 'hadeel.ali@gmail.com');

INSERT INTO Admissions(AdmissionID, PatientID, AdmissionDate, DischargeDate, AdmissionDiagnosis, ReferringPhysician, RoomNumber) VALUES
('9842013560', '1234567899', '2023-03-10', '2023-04-15', 'Pneumonia', '5897432016', 101),
('7250361948', '9987654321', '2019-10-20', '2019-11-28', 'Fractured leg', '4169287350', 102),
('6309754821', '2233445566', '2022-07-15', '2022-08-05', 'Appendicitis', '2738501946', 103),
('1845072396', '1122337789', '2018-01-03', '2018-02-12', 'Concussion', '7946132085', 104),
('8720456931', '9022020239', '2020-05-22', '2020-06-30', 'COVID-19', '3250984716', 105),
('5193678024', '2345654368', '2021-08-09', '2021-09-17', 'Bronchitis', '8071259364', 106),
('3678245190', '5433459999', '2017-03-18', '2017-04-25', 'Kidney stones', '6421793580', 107),
('2451093867', '4433218887', '2016-09-03', '2016-10-11', 'Migraine', '1982674305', 108),
('7301856492', '9988998067', '2014-12-12', '2015-01-20', 'Cancer', '7354021869', 109),
('8941025736', '2823443211', '2024-01-30', '2024-03-08', 'Hypertension', '1209835746', 200);

INSERT INTO Appointments(AppointmentID, PatientID, PhysicianID, AppointmentDate, Status) VALUES
('8714529630', '1234567899', '5897432016', '2023-03-10', 'Confirmed'),
('5396820471', '9987654321', '4169287350', '2019-10-20', 'Confirmed'),
('2468013579', '2233445566', '2738501946', '2022-07-15', 'Confirmed'),
('7089136254', '1122337789', '7946132085', '2018-01-03', 'Confirmed'),
('3159204876', '9022020239', '3250984716', '2020-05-22', 'Confirmed'),
('9823641750', '2345654368', '8071259364', '2021-08-09', 'Confirmed'),
('6974851230', '5433459999', '6421793580', '2017-03-18', 'Confirmed'),
('1247853960', '4433218887', '1982674305', '2016-09-03', 'Canceled'),
('5309147682', '9988998067', '7354021869', '2014-12-12', 'Canceled'),
('8752096341', '2823443211', '1209835746', '2024-05-02', 'Confirmed');

INSERT INTO Nurses(NurseID, FirstName, LastName, Shift, ContactNumber, Email) VALUES
('8912457063', 'Sara', 'Tariq', 'Holiday', '0501234567', 'sara.tariq@gmail.com'),
('5289736140', 'Saher', 'Tariq', 'Holiday', '0502345678', 'saher.tariq@gmail.com'),
('6731482950', 'David', 'Joe', 'Non-Holiday', '0503456789', 'david.joe@gmail.com'),
('3640891572', 'Lisa', 'Williams', 'Non-Holiday', '0504567890', 'lisa.williams@gmail.com'),
('7159328640', 'Michael', 'Garcia', 'Holiday', '0505678901', 'michael.garcia@gmail.com'),
('4362819075', 'Michelle', 'Martinez', 'Non-Holiday', '0506789012', 'michelle.martinez@gmail.com'),
('9205467318', 'Christopher', 'Brown', 'Non-Holiday', '0507890123', 'christopher.brown@gmail.com'),
('1873620945', 'Amanda', 'Davis', 'Non-Holiday', '0508901234', 'amanda.davis@gmail.com'),
('5023698714', 'Matthew', 'Rodriguez', 'Holiday', '0509012345', 'matthew.rodriguez@gmail.com'),
('9436152078', 'Ashley', 'Wilson', 'Holiday', '0509012345', 'ashley.wilson@gmail.com');

INSERT INTO Tests(TestID, TestName, Description) VALUES
('7485219630', 'Lipid Profile', 'A test to measure levels of fats in the blood'),
('3068952741', 'Urinalysis', 'A test to analyze urine for detecting health issues'),
('9274051863', 'X-ray', 'Medical imaging that uses X-rays to see internal body structures'),
('5102938476', 'Ultrasound', 'Medical imaging that uses sound waves to see internal organs'),
('6398471250', 'Mammography', 'Medical imaging used for breast examination and tumor detection'),
('2846157039', 'Fluoroscopy', 'Medical imaging that uses continuous X-rays to visualize internal organ movement'),
('7493021568', 'Angiography', 'Medical imaging that uses dye and X-rays to visualize blood vessels'),
('1589372046', 'Colonoscopy', 'Examination of the colon using a small camera'),
('4602397185', 'Bronchoscopy', 'Examination of the airways using a thin tube'),
('9238574016', 'Arthroscopy', 'Examination of joints using a small camera');

INSERT INTO TestResults(ResultID, TestID, PatientID, ResultDate, ResultDetails) VALUES
('9742051863', '7485219630', '1234567899', '2023-03-10', 'Normal lipid profile'),
('5314782905', '3068952741', '9987654321', '2019-10-20', 'No abnormalities detected in urinalysis'),
('8269075143', '9274051863', '2233445566', '2022-07-15', 'X-ray shows no fractures'),
('6398471250', '5102938476', '1122337789', '2018-01-03', 'Normal ultrasound results'),
('2846157039', '6398471250', '9022020239', '2020-05-22', 'Mammography indicates no signs of breast abnormalities'),
('7493021568', '2846157039', '2345654368', '2021-08-09', 'Fluoroscopy shows normal organ movement'),
('8127053964', '7493021568', '5433459999', '2017-03-18', 'Angiography reveals clear blood vessels'),
('1873620945', '1589372046', '4433218887', '2016-09-03', 'Colonoscopy results are normal'),
('5023698714', '4602397185', '9988998067', '2014-12-12', 'Bronchoscopy indicates no abnormalities'),
('8235740169', '9238574016', '2823443211', '2024-01-30', 'Arthroscopy shows healthy joints');

INSERT INTO Medications(MedicationID, MedicationName, Dosage, Route, Frequency) VALUES
('1234567891', 'Pantoprazole', '40mg', 'Oral', 'Once daily before breakfast'),
('1234567892', 'Sertraline', '50mg', 'Oral', 'Once daily in the morning'),
('1234567893', 'Prednisone', '75mg', 'Oral', 'Once daily with food'),
('1234567894', 'Furosemide', '40mg', 'Oral', 'Once daily in the morning'),
('1234567895', 'Clopidogrel', '75mg', 'Oral', 'Once daily'),
('1234567896', 'Ativan', '40mg', 'Oral', '2-3 times daily as needed'),
('1234567897', 'Hydrochlorothiazide', '25mg', 'Oral', 'Once daily in the morning'),
('1234567898', 'Tramadol', '75mg', 'Oral', 'Every 4-6 hours as needed'),
('1234567899', 'Methotrexate', '40mg', 'Oral', 'Once weekly'),
('1234567900', 'Risperidone', '40mg', 'Oral', 'Once daily');

INSERT INTO Prescriptions(PrescriptionID, PatientID, PhysicianID, MedicationID, PrescriptionDate, DosageInstructions) VALUES
('7801234569', '1234567899', '5897432016', '1234567891', '2023-03-10', 'Take 40mg once daily before breakfast'),
('7802345670', '9987654321', '4169287350', '1234567892', '2019-10-20', 'Take 50mg once daily in the morning'),
('7803456781', '2233445566', '2738501946', '1234567893', '2022-07-15', 'Take 75mg once daily with food'),
('7804567892', '1122337789', '7946132085', '1234567894', '2018-01-03', 'Take 40mg once daily in the morning'),
('7805678903', '9022020239', '3250984716', '1234567895', '2020-05-22', 'Take 75mg once daily'),
('7806789014', '2345654368', '8071259364', '1234567896', '2021-08-09', 'Take 40mg 2-3 times daily as needed'),
('7807890125', '5433459999', '6421793580', '1234567897', '2017-03-18', 'Take 25mg once daily in the morning'),
('7808901236', '4433218887', '1982674305', '1234567898', '2016-09-03', 'Take 75mg every 4-6 hours as needed'),
('7809012347', '9988998067', '7354021869', '1234567899', '2014-12-12', 'Take 40mg once weekly'),
('7800123458', '2823443211', '1209835746', '1234567900', '2024-01-30', 'Take 40mg once daily');
