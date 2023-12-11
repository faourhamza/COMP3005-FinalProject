-- COMP3005
-- Final Project
-- SQL Queries
-- Hamza Faour
-- 101195438

-- INSERT
INSERT INTO Members (member_id, fName, lName, email, password, health_metrics, fitness_goals, loyalty_points)
VALUES (1, 'Hamza', 'Faour', 'hamza.faour@example.com', 'password', 'Healthy', 'Gain 5kg', 100);

INSERT INTO Trainers (trainer_id, fName, lName, email, password, certification_details)
VALUES (1, 'John', 'Smith', 'john.smith@example.com', 'password', 'Not certified');

INSERT INTO Sessions (session_id, member_id, trainer_id, date, time, status)
VALUES (1, 1, 1, '2023-12-10', '12:00', 'Scheduled');

INSERT INTO ProgressNotes (note_id, session_id, note_text)
VALUES (1, 1, 'Great progress!');

-- UPDATE
UPDATE Members
SET fitness_goals = 'Gain 10kg'
WHERE member_id = 1;

UPDATE Trainers
SET certification_details = 'Certified'
WHERE trainer_id = 1;

-- SELECT
SELECT * FROM Members

SELECT * FROM Trainers

SELECT * FROM Sessions

SELECT * FROM ProgressNotes

-- DELETE
DELETE FROM RoomBookings
WHERE booking_id = 1;

DELETE FROM ClassParticipants
WHERE class_id = 1 AND member_id = 1;