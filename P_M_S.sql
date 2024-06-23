CREATE DATABASE PATIENT_MANAGEMENT_SYSTEM;
USE PATIENT_MANAGEMENT_SYSTEM;

CREATE TABLE Patient(
    Pid INT PRIMARY KEY,
    PName VARCHAR(20) NOT NULL,
    PGender CHAR ,
    Pdob DATE NOT NULL,
    PContact INT NOT NULL
    );
    
INSERT INTO Patient (Pid, PName,PGender, Pdob, PContact)
VALUES
    (01,'Jani', 'F' ,'2002-10-11',"0113423333"),
    (02,'Netusha', 'M' ,'2003-11-10',"0113422344"),
    (03,'Geta', 'F' ,'2012-09-24',"0113423453"),
    (04,'Janith', 'M' ,'2002-12-21',"0113579333"),
    (05,'Anna', 'F' ,'2004-07-13',"0113456333");
    
    
    CREATE TABLE Department(
    Depid INT PRIMARY KEY,
    DepName VARCHAR(20) NOT NULL
    );
    
INSERT INTO Department (Depid, DepName)VALUES
    (971, 'ECU'),
    (972, 'ETU'),
    (973, 'MRU');
    
    
    
CREATE TABLE Doctor(
    Did INT PRIMARY KEY,
    DName VARCHAR(20) NOT NULL,
    DContact INT NOT NULL,
    Depid INT,
    FOREIGN KEY (Depid) REFERENCES Department (Depid)
    );
    

INSERT INTO Doctor (Did, DName, DContact, Depid)
VALUES
    (0151,'Dr.Dulip', 0751111113, 971),
    (0152,'Dr.Neil',  0753444441, 972),
    (0153,'Dr.Sunil', 0756666663, 973),
    (0154,'Dr.Piya',  0759999993, 972);
    
    
CREATE TABLE Nurse(
    Nid INT PRIMARY KEY,
    NName VARCHAR(20) NOT NULL,
    Depid INT,
    FOREIGN KEY (Depid) REFERENCES Department (Depid)
    );
    
INSERT INTO Nurse (Nid, NName, Depid)
VALUES
    (214,'Thinali', 971),
    (215,'Nilashi', 971),
    (216,'Dulishi', 972),
    (217,'Thilini', 973),
    (218,'Deshani', 971);
    


    

CREATE TABLE Medical(

    Mid INT PRIMARY KEY,
    Pid INT,
    Depid INT,
    DoVisit DATE,
    FOREIGN KEY (Depid) REFERENCES Department (Depid)
    );
    
INSERT INTO Medical (Mid, Pid, Depid, DoVisit)
VALUES
    (715, 01, 971, '2023-08-20'),
    (716, 02, 973, '2023-09-21'),
    (717, 03, 972, '2023-08-28'),
    (718, 04, 971, '2023-09-01'),
    (719, 05, 971, '2023-08-02');
    
CREATE table Appointment(

    AppointmentID int Primary Key,
    Pid  int ,
    Did int ,
    AppointmentDate date,
    AppointmentTime  time,
	FOREIGN KEY (Pid) REFERENCES Patient (Pid),
	FOREIGN KEY (Did) REFERENCES Doctor (Did)
    );

INSERT INTO Appointment (AppointmentID, Pid, Did, AppointmentDate, AppointmentTime)
VALUES
    (1001, 01, 0151, '2023-08-25', '10:00:00'),
    (1002, 02, 0152, '2023-08-26', '15:30:00'),
    (1003, 03, 0153, '2023-08-27', '11:45:00'),
    (1004, 04, 0154, '2023-08-28', '14:15:00'),
    (1005, 05, 0151, '2023-08-29', '09:30:00');
    

    
show tables ;


select * from department;
select * from doctor;
select * from Patient;
select * from Nurse;
select * from medical;
select * from Appointment;