-- COMP3005
-- Final Project
-- DDL Tables
-- Hamza Faour
-- 101195438

CREATE TABLE Members (
    member_id SERIAL PRIMARY KEY,
    fName VARCHAR(50),
    lName VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(50),
    health_metrics TEXT,
    fitness_goals TEXT,
    loyalty_points INT
);

CREATE TABLE Trainers (
    trainer_id SERIAL PRIMARY KEY,
    fName VARCHAR(50),
    lName VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(50),
    certification_details TEXT
);

CREATE TABLE Sessions (
    session_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Members(member_id),
    trainer_id INT REFERENCES Trainers(trainer_id),
    date DATE,
    time TIME,
    status VARCHAR(20)
);

CREATE TABLE ProgressNotes (
    note_id SERIAL PRIMARY KEY,
    session_id INT REFERENCES Sessions(session_id),
    note_text TEXT
);

CREATE TABLE Classes (
    class_id SERIAL PRIMARY KEY,
    class_name VARCHAR(50),
    description TEXT,
    schedule VARCHAR(100),
    capacity INT
);

CREATE TABLE ClassParticipants (
    class_id INT REFERENCES Classes(class_id),
    member_id INT REFERENCES Members(member_id),
    PRIMARY KEY (class_id, member_id)
);

CREATE TABLE Admins (
    admin_id SERIAL PRIMARY KEY,
    fName VARCHAR(50),
    lName VARCHAR(50),
    email VARCHAR(100) UNIQUE,
    password VARCHAR(50)
);

CREATE TABLE Rooms (
    room_id SERIAL PRIMARY KEY,
    room_name VARCHAR(50),
    capacity INT,
    description TEXT
);

CREATE TABLE RoomBookings (
    booking_id SERIAL PRIMARY KEY,
    room_id INT REFERENCES Rooms(room_id),
    date DATE,
    time TIME,
    status VARCHAR(20)
);

CREATE TABLE Equipment (
    equipment_id SERIAL PRIMARY KEY,
    equipment_name VARCHAR(50),
    type VARCHAR(50),
    manufacturer VARCHAR(50),
    purchase_date DATE,
    price DECIMAL(10, 2)
);

CREATE TABLE EquipmentMaintenance (
    maintenance_id SERIAL PRIMARY KEY,
    equipment_id INT REFERENCES Equipment(equipment_id),
    date DATE,
    status VARCHAR(20)
);

CREATE TABLE BillingTransactions (
    transaction_id SERIAL PRIMARY KEY,
    member_id INT REFERENCES Members(member_id),
    amount DECIMAL(10, 2),
    transaction_date DATE,
    payment_status VARCHAR(20)
);