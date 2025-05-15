CREATE DATABASE ClinicDB;
USE ClinicDB;

CREATE TABLE Specializations (
    specialization_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE
);

CREATE TABLE Doctors (
    doctor_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) NOT NULL UNIQUE,
    phone VARCHAR(20),
    specialization_id INT,
    FOREIGN KEY (specialization_id) REFERENCES Specializations(specialization_id)
);
CREATE TABLE Patients (
    patient_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    dob DATE,
    gender ENUM('Male', 'Female', 'Other'),
    phone VARCHAR(20),
    email VARCHAR(100) UNIQUE
);
CREATE TABLE Appointments (
    appointment_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_date DATETIME NOT NULL,
    doctor_id INT NOT NULL,
    patient_id INT NOT NULL,
    reason TEXT,
    FOREIGN KEY (doctor_id) REFERENCES Doctors(doctor_id),
    FOREIGN KEY (patient_id) REFERENCES Patients(patient_id)
);
CREATE TABLE Prescriptions (
    prescription_id INT AUTO_INCREMENT PRIMARY KEY,
    appointment_id INT UNIQUE, 
    notes TEXT,
    FOREIGN KEY (appointment_id) REFERENCES Appointments(appointment_id)
);
CREATE TABLE Medications (
    medication_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT
);
CREATE TABLE Prescription_Medications (
    prescription_id INT,
    medication_id INT,
    dosage VARCHAR(50),
    PRIMARY KEY (prescription_id, medication_id),
    FOREIGN KEY (prescription_id) REFERENCES Prescriptions(prescription_id),
    FOREIGN KEY (medication_id) REFERENCES Medications(medication_id)
);
CREATE TABLE Admins (
    admin_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL UNIQUE,
    password_hash VARCHAR(255) NOT NULL,
    full_name VARCHAR(100),
    email VARCHAR(100) UNIQUE
);
INSERT INTO Specializations (name) VALUES 
('Cardiology'), 
('Dermatology'), 
('Pediatrics'), 
('General Medicine');
INSERT INTO Doctors (name, email, phone, specialization_id) VALUES
('Dr. Alice Smith', 'alice@clinic.com', '1234567890', 1),
('Dr. Bob Johnson', 'bob@clinic.com', '0987654321', 2),
('Dr. Carol Lee', 'carol@clinic.com', '1122334455', 4);
INSERT INTO Patients (name, dob, gender, phone, email) VALUES
('John Doe', '1990-05-12', 'Male', '5551234567', 'john@example.com'),
('Jane Roe', '1985-11-25', 'Female', '5559876543', 'jane@example.com');
INSERT INTO Appointments (appointment_date, doctor_id, patient_id, reason) VALUES
('2025-05-16 10:30:00', 1, 1, 'Regular check-up'),
('2025-05-17 14:00:00', 2, 2, 'Skin rash');
INSERT INTO Prescriptions (appointment_id, notes) VALUES
(1, 'Take 1 tablet daily after meals'),
(2, 'Apply cream twice a day');
INSERT INTO Medications (name, description) VALUES
('Atorvastatin', 'Used to lower cholesterol'),
('Hydrocortisone Cream', 'Topical steroid for skin conditions');
INSERT INTO Prescription_Medications (prescription_id, medication_id, dosage) VALUES
(1, 1, '10mg daily'),
(2, 2, 'Apply small amount twice daily');
INSERT INTO Admins (username, password_hash, full_name, email) VALUES
('admin1', 'hashedpassword123', 'Admin One', 'admin1@clinic.com'),
('admin2', 'hashedpassword456', 'Admin Two', 'admin2@clinic.com');












