-- Create Patients Table
CREATE TABLE Patients (
    patient_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    date_of_birth DATE NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Create Doctors Table
CREATE TABLE Doctors (
    doctor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    specialty VARCHAR(100) NOT NULL,
    phone_number VARCHAR(15) UNIQUE,
    email VARCHAR(100) UNIQUE
);

-- Create Appointments Table (1-M relationship with Patients and Doctors)
CREATE TABLE Appointments (
    appointment_id INT PRIMARY KEY AUTO_INCREMENT,
    patient_id INT NOT NULL,
    doctor_id INT NOT NULL,
    appointment_date DATETIME NOT NULL,
    reason_for_visit TEXT,
    CONSTRAINT fk_patient
        FOREIGN KEY (patient_id)
        REFERENCES Patients(patient_id),
    CONSTRAINT fk_doctor
        FOREIGN KEY (doctor_id)
        REFERENCES Doctors(doctor_id)
);

-- Create Services Table
CREATE TABLE Services (
    service_id INT PRIMARY KEY AUTO_INCREMENT,
    service_name VARCHAR(100) NOT NULL UNIQUE,
    description TEXT,
    price DECIMAL(10, 2) NOT NULL
);

-- Create Appointment_Services Junction Table (M-M relationship between Appointments and Services)
CREATE TABLE Appointment_Services (
    appointment_id INT NOT NULL,
    service_id INT NOT NULL,
    PRIMARY KEY (appointment_id, service_id),
    CONSTRAINT fk_appointment_service
        FOREIGN KEY (appointment_id)
        REFERENCES Appointments(appointment_id),
    CONSTRAINT fk_service_appointment
        FOREIGN KEY (service_id)
        REFERENCES Services(service_id)
);