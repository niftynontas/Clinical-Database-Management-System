# Clinical-Database-Management-System

===========================================
         Clinic Booking System
        MySQL Database Project
===========================================

Author: [Your Name]
Date: [Submission Date]
Database Name: ClinicDB

-------------------------------------------
1. DESCRIPTION
-------------------------------------------
This project implements a relational database system for a Clinic Booking System using MySQL. The database handles data for doctors, patients, appointments, prescriptions, medications, and system admins.

-------------------------------------------
2. TOOLS USED
-------------------------------------------
- MySQL
- MySQL Workbench (for development and ER diagram)
- SQL scripts (for table creation and data insertion)

-------------------------------------------
3. ENTITIES AND TABLES
-------------------------------------------
✔ Specializations  
✔ Doctors  
✔ Patients  
✔ Appointments  
✔ Prescriptions  
✔ Medications  
✔ Prescription_Medications (link table)  
✔ Admins

-------------------------------------------
4. RELATIONSHIPS
-------------------------------------------
- One-to-Many:
  → Specializations → Doctors  
  → Doctors → Appointments  
  → Patients → Appointments  

- One-to-One:
  → Appointments → Prescriptions  

- Many-to-Many:
  → Prescriptions ↔ Medications (via Prescription_Medications)

-------------------------------------------
5. HOW TO USE THE DATABASE
-------------------------------------------
1. Run the SQL script to create the database:
   CREATE DATABASE ClinicDB;

2. Use the database:
   USE ClinicDB;

3. Run the provided CREATE TABLE statements to create all tables.

4. Run the INSERT INTO statements to populate sample data.

5. Use SELECT queries to test data retrieval.
