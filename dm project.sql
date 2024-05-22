CREATE DATABASE Event_Management;
USE Event_Management;

Create table Venue(
VenueId Varchar(10) Primary Key, 
VenueName varchar(10), 
VenueAddress Varchar(50), 
VenueCapacity int
);
CREATE TABLE Event (
    EventID VARCHAR(10) PRIMARY KEY,
    EventName VARCHAR(20),
    EventDescription VARCHAR(50),
    EventStartDate DATE,
    EventEndDate DATE,
    VenueID VARCHAR(10),
    FOREIGN KEY (VenueID) REFERENCES Venue(VenueID)
);
INSERT INTO Venue (VenueID, VenueName, VenueAddress, VenueCapacity) VALUES
    ('V12', 'Venue1', '123 Main Street, Denton, TX 76207', 1200),
    ('V13', 'Venue2', '456 Elm Street, Denton, TX 76208', 800),
    ('V14', 'Venue3', '789 Oak Street, Denton, TX 76209', 1500),
    ('V15', 'Venue4', '321 Pine Street, Denton, TX 76210', 1000),
    ('V16', 'Venue5', '654 Maple Street, Denton, TX 76211', 2000),
    ('V17', 'Venue6', '987 Cedar Street, Denton, TX 76212', 700),
    ('V18', 'Venue7', '135 Birch Street, Denton, TX 76213', 1800),
    ('V19', 'Venue8', '246 Walnut Street, Denton, TX 76214', 1300),
    ('V20', 'Venue9', '357 Willow Street, Denton, TX 76215', 600),
    ('V21', 'Venue10', '468 Pineapple Street, Denton, TX 76216', 1700),
    ('V22', 'Venue11', '579 Banana Street, Denton, TX 76217', 1400),
    ('V23', 'Venue12', '680 Orange Street, Denton, TX 76218', 900),
    ('V24', 'Venue13', '791 Lemon Street, Denton, TX 76219', 1100),
    ('V25', 'Venue14', '802 Grape Street, Denton, TX 76220', 1600),
    ('V26', 'Venue15', '913 Cherry Street, Denton, TX 76221', 750),
    ('V27', 'Venue16', '924 Blueberry Street, Denton, TX 76222', 1900),
    ('V28', 'Venue17', '135 Raspberry Street, Denton, TX 76223', 2200),
    ('V29', 'Venue18', '246 Mango Street, Denton, TX 76224', 950),
    ('V30', 'Venue19', '357 Peach Street, Denton, TX 76225', 800),
    ('V31', 'Venue20', '468 Plum Street, Denton, TX 76226', 1300),
    ('V32', 'Venue21', '579 Watermelon Street, Denton, TX 76227', 1700),
    ('V33', 'Venue22', '680 Avocado Street, Denton, TX 76228', 1100),
    ('V34', 'Venue23', '791 Kiwi Street, Denton, TX 76229', 1500),
    ('V35', 'Venue24', '802 Pear Street, Denton, TX 76230', 2000),
    ('V36', 'Venue25', '913 Coconut Street, Denton, TX 76231', 900),
    ('V37', 'Venue26', '924 Strawberry Street, Denton, TX 76232', 1800),
    ('V38', 'Venue27', '135 Guava Street, Denton, TX 76233', 700),
    ('V39', 'Venue28', '246 Papaya Street, Denton, TX 76234', 1600),
    ('V40', 'Venue29', '357 Tangerine Street, Denton, TX 76235', 1200),
    ('V41', 'Venue30', '468 Dragonfruit Street, Denton, TX 76236', 1400);
select * from Venue;

UPDATE Venue SET VenueCapacity = 1500 WHERE VenueID = 'V12';
UPDATE Venue SET VenueAddress = '123 Cherry Lane, Denton, TX 76207' WHERE VenueID = 'V15';
UPDATE Venue SET VenueCapacity = 2000 WHERE VenueID = 'V21';
select * from Venue;

SELECT * FROM Venue WHERE VenueCapacity > 1500;
SELECT * FROM Venue WHERE VenueCapacity BETWEEN 1000 AND 2000;

SELECT VenueName, VenueCapacity FROM Venue;



INSERT INTO Event (EventID, EventName, EventDescription, EventStartDate, EventEndDate, VenueID) VALUES
    ('E1', 'Concert1', 'Rock Concert', '2024-05-10', '2024-05-11', 'V12'),
    ('E2', 'Conference1', 'Tech Conference', '2024-06-15', '2024-06-16', 'V13'),
    ('E3', 'Exhibition1', 'Art Exhibition', '2024-07-20', '2024-07-21', 'V14'),
    ('E4', 'Festival1', 'Music Festival', '2024-08-25', '2024-08-26', 'V15'),
    ('E5', 'Seminar1', 'Business Seminar', '2024-09-30', '2024-10-01', 'V16'),
    ('E6', 'Workshop1', 'Cooking Workshop', '2024-11-05', '2024-11-06', 'V17'),
    ('E7', 'Seminar2', 'Marketing Seminar', '2024-12-10', '2024-12-11', 'V18'),
    ('E8', 'Conference2', 'Science Conference', '2025-01-15', '2025-01-16', 'V19'),
    ('E9', 'Exhibition2', 'Photography Exhibition', '2025-02-20', '2025-02-21', 'V20'),
    ('E10', 'Concert2', 'Pop Concert', '2025-03-25', '2025-03-26', 'V21'),
    ('E11', 'Festival2', 'Food Festival', '2025-04-30', '2025-05-01', 'V22'),
    ('E12', 'Workshop2', 'DIY Workshop', '2025-06-05', '2025-06-06', 'V23'),
    ('E13', 'Conference3', 'Medical Conference', '2025-07-10', '2025-07-11', 'V24'),
    ('E14', 'Seminar3', 'Leadership Seminar', '2025-08-15', '2025-08-16', 'V25'),
    ('E15', 'Exhibition3', 'Fashion Exhibition', '2025-09-20', '2025-09-21', 'V26'),
    ('E16', 'Concert3', 'Jazz Concert', '2025-10-25', '2025-10-26', 'V27'),
    ('E17', 'Seminar4', 'Financial Seminar', '2025-11-30', '2025-12-01', 'V28'),
    ('E18', 'Festival3', 'Film Festival', '2026-01-05', '2026-01-06', 'V29'),
    ('E19', 'Conference4', 'Education Conference', '2026-02-10', '2026-02-11', 'V30'),
    ('E20', 'Workshop3', 'Art Workshop', '2026-03-15', '2026-03-16', 'V31'),
    ('E21', 'Exhibition4', 'Sculpture Exhibition', '2026-04-20', '2026-04-21', 'V32'),
    ('E22', 'Seminar5', 'Motivational Seminar', '2026-05-25', '2026-05-26', 'V33'),
    ('E23', 'Conference5', 'Environmental Conference', '2026-06-30', '2026-07-01', 'V34'),
    ('E24', 'Concert4', 'Classical Concert', '2026-08-05', '2026-08-06', 'V35'),
    ('E25', 'Festival4', 'Cultural Festival', '2026-09-10', '2026-09-11', 'V36'),
    ('E26', 'Workshop4', 'Technology Workshop', '2026-10-15', '2026-10-16', 'V37'),
    ('E27', 'Seminar6', 'Health Seminar', '2026-11-20', '2026-11-21', 'V38'),
    ('E28', 'Conference6', 'Business Conference', '2026-12-25', '2026-12-26', 'V39'),
    ('E29', 'Exhibition5', 'Digital Art Exhibition', '2027-01-30', '2027-01-31', 'V40'),
    ('E30', 'Concert5', 'Country Concert', '2027-03-06', '2027-03-07', 'V41');
select * from event;
UPDATE Event SET EventName = 'Rock Band Concert' WHERE VenueID = 'V12';
UPDATE Event SET EventDescription = 'Pop Star Concert' WHERE VenueID = 'V21';
UPDATE Event SET EventName = 'Various Exhibitions', EventDescription = 'Updated Exhibition Description' WHERE VenueID = 'V32';
select * from event;
SELECT COUNT(*) AS TotalEvents FROM Event;
SELECT e.EventName, e.EventStartDate, v.VenueName
FROM Event e
INNER JOIN Venue v ON e.VenueID = v.VenueID;
SELECT EventName, EventStartDate, EventEndDate
FROM Event
WHERE MONTH(EventStartDate) = MONTH(CURRENT_DATE() + INTERVAL 1 MONTH);
SELECT v.VenueName, v.VenueCapacity, COUNT(e.VenueID) AS Occupancy
FROM Venue v
LEFT JOIN Event e ON v.VenueID = e.VenueID
GROUP BY v.VenueName, v.VenueCapacity;
SELECT VenueName, VenueCapacity
FROM Venue
ORDER BY VenueCapacity DESC
LIMIT 3;
CREATE TABLE Attendee (
    AttendeeId INT PRIMARY KEY,
    FirstName VARCHAR(10),
    LastName VARCHAR(10),
    Email VARCHAR(20),
    PhoneNumber VARCHAR(20)
);
ALTER TABLE Attendee
MODIFY COLUMN Email VARCHAR(50);
ALTER TABLE Attendee
MODIFY COLUMN FirstName VARCHAR(50);
ALTER TABLE Attendee
MODIFY COLUMN LastName VARCHAR(50);

INSERT INTO Attendee (AttendeeId, FirstName, LastName, Email, PhoneNumber) 
VALUES (01, 'prianka', 'singh', 'priya10@gmail.com', '8127899086');
INSERT INTO Attendee (AttendeeId, FirstName, LastName, Email, PhoneNumber) VALUES
(02, 'john', 'smith', 'joth@gmail.com', '1234567890'),
(03, 'alice', 'johnson', 'alon@gmail.com', '9876543210'),
(04, 'michael', 'williams', 'milwims@gmail.com', '5551234567'),
(05, 'emily', 'brown', 'emiwn@gmail.com', '4567890123'),
(06, 'william', 'jones', 'williamjones@gmail.com', '7890123456'),
(07, 'jessica', 'martinez', 'jertinez@gmail.com', '3216549870'),
(08, 'matthew', 'garcia', 'matthia@gmail.com', '6547890123'),
(09, 'emma', 'rodriguez', 'emmarodriguez@gmail.com', '9876543210'),
(10, 'daniel', 'hernandez', 'danieez@gmail.com', '1234567890'),
(11, 'olivia', 'lopez', 'olpez@gmail.com', '4567890123'),
(12, 'christopher', 'martin', 'christ@gmail.com', '7890123456'),
(13, 'sophia', 'young', 'sophia@gmail.com', '3216549870'),
(14, 'andrew', 'king', 'andrng@gmail.com', '5551234567'),
(15, 'isabella', 'wright', 'isabeht@gmail.com', '1234567890'),
(16, 'joshua', 'hall', 'joshl@gmail.com', '9876543210'),
(17, 'ava', 'allen', 'avaallen@gmail.com', '7890123456'),
(18, 'ethan', 'scott', 'ethanscott@gmail.com', '4567890123'),
(19, 'mia', 'baker', 'miabaker@gmail.com', '3216549870'),
(20, 'james', 'gonzalez', 'jamez@gmail.com', '5551234567'),
(21, 'charlotte', 'nelson', 'charn@gmail.com', '1234567890'),
(22, 'alexander', 'carter', 'alex@gmail.com', '9876543210'),
(23, 'grace', 'hill', 'gral@gmail.com', '7890123456'),
(24, 'benjamin', 'murphy', 'ben@gmail.com', '4567890123'),
(25, 'lily', 'rivera', 'lilya@gmail.com', '3216549870'),
(26, 'ryan', 'cooper', 'ryanc@gmail.com', '5551234567'),
(27, 'amelia', 'parker', 'amelier@gmail.com', '1234567890'),
(28, 'jacob', 'morris', 'jacobs@gmail.com', '9876543210'),
(29, 'chloe', 'bailey', 'chey@gmail.com', '7890123456'),
(30, 'liam', 'stewart', 'liamstewart@gmail.com', '4567890123');

   
select * from Attendee;
UPDATE Attendee
SET Email = 'bhaanu@gmail.com'
WHERE AttendeeId = 2;
select * from Attendee;
select * from Attendee where AttendeeId between 24 and 30;
SELECT FirstName, Email
FROM Attendee
WHERE LastName = 'Johnson';
SELECT PhoneNumber
FROM Attendee
WHERE Email = 'priya10@gmail.com';
SELECT COUNT(*) AS TotalAttendees
FROM Attendee;
SELECT FirstName
FROM Attendee
WHERE LastName = 'cooper';
create table speaker(
SpeakerID varchar(10) Primary Key, 
FirstName varchar(30), 
LastName varchar(30), 
Email Varchar(50)
);
INSERT INTO speaker (SpeakerID, FirstName, LastName, Email) VALUES
('S01', 'Akshitha', 'row', 'akrow@gmail.com'),
('S02', 'funny', 'Sin', 'funsin@gmail.com'),
('S03', 'Mikey', 'Johne', 'miche@gmail.com'),
('S04', 'bhaunik', 'whuk', 'ewukl@gmail.com'),
('S05', 'Will', 'Taylor', 'willtaylor@gmail.com'),
('S06', 'Jessica', 'Anderson', 'jessicn@gmail.com'),
('S07', 'Mattw', 'Wion', 'matthon@gmail.com'),
('S08', 'Emma', 'Martinez', 'emmtinez@gmail.com'),
('S09', 'Daniel', 'Hernandez', 'danrnandez@gmail.com'),
('S10', 'Olivia', 'Garcia', 'olivia@gmail.com'),
('S11', 'Christopher', 'Lopez', 'christez@gmail.com'),
('S12', 'Shiviiia', 'singhh', 'shising@gmail.com'),
('S13', 'Andrew', 'Gonzalez', 'andrezalez@gmail.com'),
('S14', 'Isabella', 'Rodriguez', 'isadriguez@gmail.com'),
('S15', 'Joshua', 'Perez', 'joshrez@gmail.com'),
('S16', 'Ava', 'Sanchez', 'avchez@gmail.com'),
('S17', 'Ethan', 'Miller', 'ethaler@gmail.com'),
('S18', 'Mia', 'Moore', 'mire@gmail.com'),
('S19', 'James', 'Taylor', 'jamlor@gmail.com'),
('S20', 'Charlote', 'Jackson', 'charlkson@gmail.com'),
('S21', 'Alexander', 'White', 'alexate@gmail.com'),
('S22', 'Grace', 'Harris', 'graris@gmail.com'),
('S23', 'Benjamin', 'Clark', 'benjaark@gmail.com'),
('S24', 'Lily', 'Lewis', 'liis@gmail.com'),
('S25', 'Ryan', 'Roberts', 'ryoberts@gmail.com');

INSERT INTO speaker (SpeakerID, FirstName, LastName, Email) VALUES
('S26', 'poorna', 'edhik', 'pojko@gmail.com'),
('S27', 'srikee', 'shaa', 'srikeshaa@gmail.com'),
('S28', 'omiie', 'gutaass', 'omiss@gmail.com'),
('S29', 'jaiin', 'sheik', 'jaisik@gmail.com'),
('S30', 'simk', 'Likoks', 'sikom@gmail.com');
select * from speaker;
UPDATE speaker
SET Email = 'shivilaaa@gmail.com'
WHERE SpeakerID = 'S12';
UPDATE speaker
SET Email = 'mikkkaa@gmail.com'
WHERE SpeakerID = 'S03';
select * from speaker;
SELECT FirstName, Email
FROM speaker
WHERE LastName LIKE 'J%';
SELECT *
FROM speaker
WHERE Email = 'akrow@gmail.com';
SELECT COUNT(*) AS JamesCount
FROM speaker
WHERE FirstName = 'James';
SELECT Email
FROM speaker
WHERE LastName LIKE '%ez';
CREATE TABLE Schedule (
    ScheduleID VARCHAR(10) PRIMARY KEY,
    EventID VARCHAR(10),
    StartTime TIME,
    EndTime TIME,
    Activity VARCHAR(50),
    FOREIGN KEY (EventID) REFERENCES Event(EventID)
);
REPLACE INTO Schedule (ScheduleID, EventID, StartTime, EndTime, Activity) VALUES
    ('S01', 'E1', '18:00', '20:00', 'Concert Start'),
    ('S02', 'E2', '20:00', '22:00', 'Intermission'),
    ('S03', 'E3', '22:00', '23:59', 'Concert End'),
    ('S04', 'E4', '09:00', '10:00', 'Registration'),
    ('S05', 'E5', '10:00', '12:00', 'Opening Keynote'),
    ('S06', 'E6', '12:00', '13:00', 'Lunch Break'),
    ('S07', 'E7', '13:00', '15:00', 'Panel Discussions'),
    ('S08', 'E8', '15:00', '15:30', 'Coffee Break'),
    ('S09', 'E9', '15:30', '17:30', 'Closing Keynote'),
    ('S10', 'E10', '10:00', '12:00', 'Art Viewing'),
    ('S11', 'E11', '12:00', '13:00', 'Lunch Break'),
    ('S12', 'E12', '13:00', '15:00', 'Artist Talks'),
    ('S13', 'E13', '15:00', '17:00', 'Interactive Workshops'),
    ('S14', 'E14', '18:00', '19:00', 'Festival Opening'),
    ('S15', 'E15', '19:00', '21:00', 'Live Performances'),
    ('S16', 'E16', '21:00', '22:00', 'Food Tasting'),
    ('S17', 'E17', '09:00', '10:00', 'Registration'),
    ('S18', 'E18', '10:00', '12:00', 'Keynote Address'),
    ('S19', 'E19', '12:00', '13:00', 'Networking Lunch'),
    ('S20', 'E20', '13:00', '15:00', 'Panel Discussions'),
    ('S21', 'E21', '10:00', '12:00', 'Cooking Demo'),
    ('S22', 'E22', '12:00', '13:00', 'Lunch Break'),
    ('S23', 'E23', '13:00', '15:00', 'Hands-on Cooking'),
    ('S24', 'E24', '15:00', '17:00', 'Tasting Session'),
    ('S25', 'E25', '10:00', '12:00', 'Marketing Strategies Workshop'),
    ('S26', 'E26', '12:00', '13:00', 'Lunch Break'),
    ('S27', 'E27', '13:00', '15:00', 'Digital Marketing Panel'),
    ('S28', 'E28', '15:00', '17:00', 'Networking Session'),
    ('S29', 'E29', '09:00', '10:00', 'Registration'),
    ('S30', 'E30', '10:00', '12:00', 'Keynote Speech');

SELECT * FROM Schedule;
UPDATE Schedule
SET StartTime = '10:00:00'
WHERE ScheduleID = 'S01';
UPDATE Schedule
SET EndTime = '18:00:00'
WHERE EventID = 'E10';
UPDATE Schedule
SET Activity = 'Net Session'
WHERE ScheduleID = 'S03';
SELECT * FROM Schedule;
SELECT * FROM Schedule WHERE StartTime > '12:00:00';
SELECT * FROM Schedule WHERE Activity LIKE '%Keynote%';
SELECT * FROM Schedule WHERE EventID = 'E10';
SELECT * FROM Schedule WHERE EndTime < '17:00:00';
SELECT s.ScheduleID, s.EventID, e.EventName, s.StartTime, s.EndTime, s.Activity
FROM Schedule s
INNER JOIN Event e ON s.EventID = e.EventID;
select Activity , Eventid from schedule where ScheduleID='S06';

CREATE TABLE EventSpeaker (
    EventID VARCHAR(10),
    SpeakerID VARCHAR(10),
    FOREIGN KEY (EventID) REFERENCES Event(EventID),
    FOREIGN KEY (SpeakerID) REFERENCES Speaker(SpeakerID)
);
select * from event;
select * from speaker;
INSERT INTO EventSpeaker (EventID, SpeakerID) VALUES
    ('E1', 'S12'),
    ('E2', 'S02'),
    ('E3', 'S07'),
    ('E4', 'S20'),
    ('E5', 'S14'),
    ('E6', 'S21'),
    ('E7', 'S16'),
    ('E8', 'S09'),
    ('E9', 'S13'),
    ('E10', 'S05'),
    ('E11', 'S08'),
    ('E12', 'S24'),
    ('E13', 'S22'),
    ('E14', 'S18'),
    ('E15', 'S29'),
    ('E16', 'S28'),
    ('E17', 'S15'),
    ('E18', 'S25'),
    ('E19', 'S01'),
    ('E20', 'S30'),
    ('E21', 'S03'),
    ('E22', 'S10'),
    ('E23', 'S11'),
    ('E24', 'S19'),
    ('E25', 'S27'),
    ('E26', 'S04'),
    ('E27', 'S17'),
    ('E28', 'S06'),
    ('E29', 'S26'),
    ('E30', 'S23');
select * from EventSpeaker;

CREATE TABLE Payment (
    PaymentID INT PRIMARY KEY,
    PaymentDate DATE,
    Paymenttype VARCHAR(25),
    PaymentStatus VARCHAR(25)
);
INSERT INTO Payment (PaymentID, PaymentDate, Paymenttype, PaymentStatus) 
VALUES 
    (2100, '2024-05-10', 'Credit Card', 'Completed'),
    (2101, '2024-06-15', 'Online', 'Pending'),
    (2102, '2024-07-20', 'Cash', 'Failed'),
    (2103, '2024-08-25', 'Credit Card', 'Completed'),
    (2104, '2024-09-30', 'Cash', 'Completed'),
    (2105, '2024-11-05', 'Online', 'Pending'),
    (2106, '2024-12-10', 'Cash', 'Failed'),
    (2107, '2025-01-15', 'Credit Card', 'Completed'),
    (2108, '2025-02-20', 'Cash', 'Completed'),
    (2109, '2025-03-25', 'Online', 'Pending'),
    (2110, '2025-04-30', 'Credit Card', 'Failed'),
    (2111, '2025-06-05', 'Cash', 'Completed'),
    (2112, '2025-07-10', 'Online', 'Completed'),
    (2113, '2025-08-15', 'Credit Card', 'Pending'),
    (2114, '2025-09-20', 'Cash', 'Failed'),
    (2115, '2025-10-25', 'Online', 'Completed'),
    (2116, '2025-11-30', 'Credit Card', 'Completed'),
    (2117, '2026-01-05', 'Cash', 'Pending'),
    (2118, '2026-02-10', 'Online', 'Failed'),
    (2119, '2026-03-15', 'Credit Card', 'Completed'),
    (2120, '2026-04-20', 'Cash', 'Pending'),
    (2121, '2026-05-25', 'Online', 'Completed'),
    (2122, '2026-06-30', 'Credit Card', 'Completed'),
    (2123, '2026-08-05', 'Cash', 'Pending'),
    (2124, '2026-09-10', 'Online', 'Completed'),
    (2125, '2026-10-15', 'Credit Card', 'Completed'),
    (2126, '2026-11-20', 'Cash', 'Pending'),
    (2127, '2026-12-25', 'Online', 'Completed'),
    (2128, '2027-01-30', 'Credit Card', 'Completed'),
    (2129, '2027-03-06', 'Cash', 'Pending');
UPDATE Payment
SET PaymentStatus = 'Completed'
WHERE PaymentID = 2101;
UPDATE Payment
SET PaymentDate = '2025-05-01'
WHERE PaymentID = 2110;
UPDATE Payment
SET Paymenttype = 'Cash', PaymentStatus = 'Completed'
WHERE PaymentID = 2118;
select * from Payment;
SELECT * FROM Payment WHERE Paymenttype = 'Credit Card';
SELECT * FROM Payment WHERE PaymentDate >= '2025-01-01';
SELECT * FROM Payment WHERE PaymentStatus = 'Pending';
SELECT * FROM Payment ORDER BY PaymentDate DESC LIMIT 1;
SELECT * FROM Payment 
WHERE PaymentDate BETWEEN '2025-01-01' AND '2025-12-31';
SELECT Paymentid,PaymentStatus from payment WHERE PaymentStatus='Completed';

CREATE TABLE Tickets (
    TicketNumber VARCHAR(15), 
    TicketPrice INT, 
    CustomerName VARCHAR(30), 
    PaymentID INT
);
INSERT INTO Tickets (TicketNumber, TicketPrice, CustomerName, PaymentID) VALUES
    ('T001', 50, 'John Doe', 2100),
    ('T002', 60, 'Alice Smith', 2101),
    ('T003', 70, 'Michael Johnson', 2102),
    ('T004', 80, 'Emily Brown', 2103),
    ('T005', 90, 'William Taylor', 2104),
    ('T006', 100, 'Jessica Anderson', 2105),
    ('T007', 110, 'Matthew Wilson', 2106),
    ('T008', 120, 'Emma Martinez', 2107),
    ('T009', 130, 'Daniel Hernandez', 2108),
    ('T010', 140, 'Olivia Garcia', 2109),
    ('T011', 150, 'Christopher Lopez', 2110),
    ('T012', 160, 'Sophia Lee', 2111),
    ('T013', 170, 'Andrew Gonzalez', 2112),
    ('T014', 180, 'Isabella Rodriguez', 2113),
    ('T015', 190, 'Joshua Perez', 2114),
    ('T016', 200, 'Ava Sanchez', 2115),
    ('T017', 210, 'Ethan Miller', 2116),
    ('T018', 220, 'Mia Moore', 2117),
    ('T019', 230, 'James Taylor', 2118),
    ('T020', 240, 'Charlotte Jackson', 2119),
    ('T021', 250, 'Alexander White', 2120),
    ('T022', 260, 'Grace Harris', 2121),
    ('T023', 270, 'Benjamin Clark', 2122),
    ('T024', 280, 'Lily Lewis', 2123),
    ('T025', 290, 'Ryan Roberts', 2124),
    ('T026', 300, 'Amelia Walker', 2125),
    ('T027', 310, 'Jacob Hall', 2126),
    ('T028', 320, 'Chloe Allen', 2127),
    ('T029', 330, 'Liam Young', 2128),
    ('T030', 340, 'Priyanka Singh', 2129);
    
select * from Tickets;
UPDATE Tickets
SET TicketPrice = 55
WHERE PaymentID = 2100;
UPDATE Tickets
SET CustomerName = 'Bob Smith'
WHERE TicketNumber = 'T002';
UPDATE Tickets
SET PaymentID = 2130
WHERE TicketNumber = 'T003';
select * from Tickets;
SELECT * FROM Tickets WHERE TicketNumber = 'T001';

SELECT * FROM Tickets WHERE CustomerName LIKE 'A%';
SELECT * FROM Tickets WHERE TicketPrice > 50;
SELECT * FROM Tickets WHERE TicketPrice BETWEEN 50 AND 100;
SELECT Tickets.TicketNumber, Tickets.TicketPrice, Tickets.CustomerName, Payment.PaymentID,
Payment.PaymentDate, Payment.Paymenttype, Payment.PaymentStatus
FROM Tickets
INNER JOIN Payment ON Tickets.PaymentID = Payment.PaymentID;

CREATE TABLE Registration (
    RegistrationID VARCHAR(5),
    EventID VARCHAR(10) REFERENCES Event(EventID),
    PaymentID INT REFERENCES Payment(PaymentID),
    AttendeeID INT REFERENCES Attendee(AttendeeID),
    RegistrationDate DATE
);
INSERT INTO Registration (RegistrationID, EventID, PaymentID, AttendeeID, RegistrationDate) VALUES
    ('R001', 'E1', 2101, 1, '2024-05-09'),
    ('R002', 'E2', 2102, 2, '2024-06-14'),
    ('R003', 'E3', 2103, 3, '2024-07-19'),
    ('R004', 'E4', 2104, 4, '2024-08-24'),
    ('R005', 'E5', 2105, 5, '2024-09-29'),
    ('R006', 'E6', 2106, 6, '2024-11-04'),
    ('R007', 'E7', 2107, 7, '2024-12-09'),
    ('R008', 'E8', 2108, 8, '2025-01-14'),
    ('R009', 'E9', 2109, 9, '2025-02-19'),
    ('R010', 'E10', 2110, 10, '2025-03-24'),
    ('R011', 'E11', 2111, 11, '2025-04-29'),
    ('R012', 'E12', 2112, 12, '2025-06-04'),
    ('R013', 'E13', 2113, 13, '2025-07-09'),
    ('R014', 'E14', 2114, 14, '2025-08-14'),
    ('R015', 'E15', 2115, 15, '2025-09-19'),
    ('R016', 'E16', 2116, 16, '2025-10-24'),
    ('R017', 'E17', 2117, 17, '2025-11-29'),
    ('R018', 'E18', 2118, 18, '2026-01-04'),
    ('R019', 'E19', 2119, 19, '2026-02-09'),
    ('R020', 'E20', 2120, 20, '2026-03-14'),
    ('R021', 'E21', 2121, 21, '2026-04-19'),
    ('R022', 'E22', 2122, 22, '2026-05-24'),
    ('R023', 'E23', 2123, 23, '2026-06-29'),
    ('R024', 'E24', 2124, 24, '2026-08-04'),
    ('R025', 'E25', 2125, 25, '2026-09-09'),
    ('R026', 'E26', 2126, 26, '2026-10-14'),
    ('R027', 'E27', 2127, 27, '2026-11-19'),
    ('R028', 'E28', 2128, 28, '2026-12-24'),
    ('R029', 'E29', 2129, 29, '2027-01-29'),
    ('R030', 'E30', 2130, 30, '2027-03-05');
select * from Registration;
UPDATE Registration
SET RegistrationDate = '2024-05-11'
WHERE RegistrationID = 'R001';
UPDATE Registration
SET PaymentID = 2102
WHERE RegistrationID = 'R002';
UPDATE Registration
SET EventID = 'E2'
WHERE RegistrationID = 'R003';
SELECT Registration.RegistrationID, Registration.EventID, Registration.PaymentID, Registration.AttendeeID, Registration.RegistrationDate
FROM Registration
INNER JOIN Event ON Registration.EventID = Event.EventID
INNER JOIN Payment ON Registration.PaymentID = Payment.PaymentID
INNER JOIN Attendee ON Registration.AttendeeID = Attendee.AttendeeID
WHERE Registration.RegistrationDate BETWEEN '2024-05-10' AND '2024-05-11';
SELECT RegistrationID,EventID,PaymentID,AttendeeID,RegistrationDate
FROM Registration
WHERE RegistrationDate BETWEEN '2024-05-10' AND '2027-05-11';

SELECT RegistrationID,EventID,PaymentID
FROM Registration WHERE MONTH(RegistrationDate) = 6;

SELECT RegistrationID,EventID,PaymentID,RegistrationDate
FROM Registration WHERE YEAR(RegistrationDate) = 2025;

SELECT RegistrationID,EventID,PaymentID,AttendeeID,RegistrationDate
FROM Registration
WHERE RegistrationDate BETWEEN '2024-06-15 00:00:00' AND '2025-06-16 23:59:59';
SELECT * FROM Event
WHERE EventStartDate BETWEEN '2024-05-01' AND '2024-06-30';
SELECT EventName FROM Event
WHERE EventName LIKE 'C%';

