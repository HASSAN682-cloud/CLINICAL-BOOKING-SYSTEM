# 🏥 Clinic Booking System

A modular, sponsor-ready relational database designed to manage patient appointments, doctor schedules, treatments, and billing for a modern clinic. Built with scalability, diagnostics, and reproducibility in mind.

---

## 📦 Features

- **Patient Management**: Store personal and contact details with audit-ready timestamps.
- **Doctor Registry**: Track specialties, hiring dates, and contact info.
- **Appointment Scheduling**: Link patients and doctors with status tracking and notes.
- **Treatment Catalog**: Define procedures with cost and descriptions.
- **Billing System**: One-to-one billing per appointment with payment tracking.
- **Treatment Mapping**: Many-to-many relationship between appointments and treatments.

---

## 🗂️ Database Schema Overview

| Table                  | Description                                      |
|------------------------|--------------------------------------------------|
| `Patients`             | Stores patient details and contact info          |
| `Doctors`              | Stores doctor profiles and specialties           |
| `Appointments`         | Links patients and doctors with scheduling data  |
| `Treatments`           | Catalog of available treatments and costs        |
| `Appointment_Treatments` | Maps treatments to appointments (many-to-many) |
| `Billing`              | Tracks payment status and totals per appointment |

---

## 🔗 Relationships

- **Appointments** ↔️ `Patients` & `Doctors`: One-to-Many
- **Appointments** ↔️ `Treatments`: Many-to-Many via `Appointment_Treatments`
- **Appointments** ↔️ `Billing`: One-to-One

---

## 🛠️ Setup Instructions

1. Clone the repository or copy the SQL schema.
2. Run the schema in your MySQL-compatible environment:
   ```sql
   CREATE DATABASE ClinicBookingSystem;
   USE ClinicBookingSystem;
   -- Run table creation scripts
