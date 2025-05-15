# Clinic Booking System (MySQL Project)

## Description
A full-featured relational database designed for a clinic. It manages doctors, patients, appointments, prescriptions, and admins.

## Technologies Used
- MySQL
- MySQL Workbench

## Database Structure
- Specializations
- Doctors
- Patients
- Appointments
- Prescriptions
- Medications
- Prescription_Medications (link table)
- Admins

## Relationships
- One-to-Many: Specializations → Doctors
- One-to-Many: Doctors → Appointments
- One-to-Many: Patients → Appointments
- One-to-One: Appointments → Prescriptions
- Many-to-Many: Prescriptions ↔ Medications

## How to Use
1. Run `CREATE DATABASE ClinicDB;`
2. Run all `CREATE TABLE` statements
3. Insert sample data
4. Use SQL queries to interact with the system



