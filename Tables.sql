-- -----------------------------------------------------------------
-- CREATE TABLE

CREATE TABLE Insurance (
PolicyNumber            INT         NOT NULL,
InsuranceName           VARCHAR(50) NOT NULL,
CoverageLimit           INT         NOT NULL,
PRIMARY KEY (PolicyNumber)
);

CREATE TABLE Patients (
PatientID               CHAR(10)    NOT NULL,
FirstName               VARCHAR(50) NOT NULL,
LastName                VARCHAR(50) NOT NULL,
DateOfBirth             DATE        NOT NULL,
Gender                  CHAR        NOT NULL,
ContacNumber            CHAR(10)    NOT NULL,
EmergencyContactNumber  CHAR(10)    NOT NULL,
Address                 VARCHAR(50) NOT NULL,
InsurancePolicyNumber   INT         NOT NULL,
PRIMARY KEY (PatientID),
FOREIGN KEY(InsurancePolicyNumber) REFERENCES Insurance(PolicyNumber)
);

CREATE TABLE Physicians (
PhysicianID             CHAR(10)    NOT NULL,
FirstName               VARCHAR(50) NOT NULL,
LastName                VARCHAR(50) NOT NULL,
Specialization          VARCHAR(50) NOT NULL,
ContactNumber           CHAR(10)    NOT NULL,
Email                   VARCHAR(50) NOT NULL,
PRIMARY KEY (PhysicianID)
);

CREATE TABLE Admissions (
AdmissionID             CHAR(10)    NOT NULL,
PatientID               CHAR(10)    NOT NULL,
AdmissionDate           DATE        NOT NULL,
DischargeDate           DATE        NOT NULL,
AdmissionDiagnosis      VARCHAR(50) NOT NULL,
ReferringPhysician      CHAR(10)    NOT NULL,
RoomNumber              INT         NOT NULL,
PRIMARY KEY (PatientID),
FOREIGN KEY(PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY(ReferringPhysician) REFERENCES Physicians(PhysicianID)
);

CREATE TABLE Appointments (
AppointmentID           CHAR(10)    NOT NULL,
PatientID               CHAR(10)    NOT NULL,
PhysicianID             CHAR(10)    NOT NULL,
AppointmentDate         DATE        NOT NULL,
Status                  VARCHAR(50) NOT NULL,
PRIMARY KEY (AppointmentID),
FOREIGN KEY(PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY(PhysicianID) REFERENCES Physicians(PhysicianID)
);

CREATE TABLE Nurses (
NurseID                 CHAR(10)    NOT NULL,
FirstName               VARCHAR(50) NOT NULL,
LastName                VARCHAR(50) NOT NULL,
Shift                   VARCHAR(50) NOT NULL,
ContactNumber           CHAR(10)    NOT NULL,
Email                   VARCHAR(50) NOT NULL,
PRIMARY KEY (NurseID)
);

CREATE TABLE Tests (
TestID                  CHAR(10)    NOT NULL,
TestName                VARCHAR(50) NOT NULL,
Description             VARCHAR(100) NOT NULL,
PRIMARY KEY (TestID)
);

CREATE TABLE TestResults (
ResultID                CHAR(10)    NOT NULL,
TestID                  CHAR(10)    NOT NULL,
PatientID               CHAR(10)    NOT NULL,
ResultDate              DATE        NOT NULL,
ResultDetails           VARCHAR(100) NOT NULL,
PRIMARY KEY (ResultID),
FOREIGN KEY(TestID) REFERENCES Tests(TestID),
FOREIGN KEY(PatientID) REFERENCES Patients(PatientID)
);

CREATE TABLE Medications (
MedicationID            CHAR(10)    NOT NULL,
MedicationName          VARCHAR(50) NOT NULL,
Dosage                  VARCHAR(50) NOT NULL,
Route                   VARCHAR(50) NOT NULL,
Frequency               VARCHAR(50) NOT NULL,
PRIMARY KEY (MedicationID)
);

CREATE TABLE Prescriptions (
PrescriptionID          CHAR(10)    NOT NULL,
PatientID               CHAR(10)    NOT NULL,
PhysicianID             CHAR(10)    NOT NULL,
MedicationID            CHAR(10)    NOT NULL,
PrescriptionDate        DATE        NOT NULL,
DosageInstructions      VARCHAR(50) NOT NULL,
PRIMARY KEY (PrescriptionID),
FOREIGN KEY(PatientID) REFERENCES Patients(PatientID),
FOREIGN KEY(PhysicianID) REFERENCES Physicians(PhysicianID),
FOREIGN KEY(MedicationID) REFERENCES Medications(MedicationID)
);
