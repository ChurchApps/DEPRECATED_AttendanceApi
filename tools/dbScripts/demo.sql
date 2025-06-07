-- Demo Campus
INSERT INTO campuses (id, churchId, name, removed) VALUES 
('CAM00000001', 'CHU00000001', 'Main Campus', 0);

-- Demo Services
INSERT INTO services (id, churchId, campusId, name, removed) VALUES 
('SER00000001', 'CHU00000001', 'CAM00000001', 'Sunday Morning Service', 0),
('SER00000002', 'CHU00000001', 'CAM00000001', 'Sunday Evening Service', 0),
('SER00000003', 'CHU00000001', 'CAM00000001', 'Wednesday Evening Service', 0);

-- Demo Service Times
INSERT INTO serviceTimes (id, churchId, serviceId, name, removed) VALUES 
-- Sunday Morning Service Times
('SST00000001', 'CHU00000001', 'SER00000001', '9:00 AM Service', 0),
('SST00000002', 'CHU00000001', 'SER00000001', '10:30 AM Service', 0),

-- Sunday Evening Service Time
('SST00000003', 'CHU00000001', 'SER00000002', '6:00 PM Service', 0),

-- Wednesday Evening Service Time
('SST00000004', 'CHU00000001', 'SER00000003', '7:00 PM Service', 0);

-- Group Service Time Assignments
INSERT INTO groupServiceTimes (id, churchId, groupId, serviceTimeId) VALUES
-- Sunday Morning 9:00 AM Service Time Assignments
('GST00000001', 'CHU00000001', 'GRP00000001', 'SST00000001'), -- Sunday Morning Service
('GST00000002', 'CHU00000001', 'GRP00000004', 'SST00000001'), -- Adult Bible Class
('GST00000003', 'CHU00000001', 'GRP00000005', 'SST00000001'), -- Young Adults Class
('GST00000004', 'CHU00000001', 'GRP00000006', 'SST00000001'), -- Senior Adults Class
('GST00000005', 'CHU00000001', 'GRP00000007', 'SST00000001'), -- Nursery
('GST00000006', 'CHU00000001', 'GRP00000008', 'SST00000001'), -- Preschool
('GST00000007', 'CHU00000001', 'GRP00000009', 'SST00000001'), -- Elementary K-2
('GST00000008', 'CHU00000001', 'GRP00000010', 'SST00000001'), -- Elementary 3-5
('GST00000009', 'CHU00000001', 'GRP00000011', 'SST00000001'), -- Middle School Youth
('GST00000010', 'CHU00000001', 'GRP00000012', 'SST00000001'), -- High School Youth

-- Sunday Morning 10:30 AM Service Time Assignments
('GST00000011', 'CHU00000001', 'GRP00000001', 'SST00000002'), -- Sunday Morning Service
('GST00000012', 'CHU00000001', 'GRP00000007', 'SST00000002'), -- Nursery
('GST00000013', 'CHU00000001', 'GRP00000008', 'SST00000002'), -- Preschool
('GST00000014', 'CHU00000001', 'GRP00000009', 'SST00000002'), -- Elementary K-2
('GST00000015', 'CHU00000001', 'GRP00000010', 'SST00000002'), -- Elementary 3-5

-- Sunday Evening Service Time Assignments
('GST00000016', 'CHU00000001', 'GRP00000002', 'SST00000003'), -- Sunday Evening Service
('GST00000017', 'CHU00000001', 'GRP00000007', 'SST00000003'), -- Nursery
('GST00000018', 'CHU00000001', 'GRP00000008', 'SST00000003'), -- Preschool
('GST00000019', 'CHU00000001', 'GRP00000009', 'SST00000003'), -- Elementary K-2
('GST00000020', 'CHU00000001', 'GRP00000010', 'SST00000003'), -- Elementary 3-5

-- Wednesday Evening Service Time Assignments
('GST00000021', 'CHU00000001', 'GRP00000003', 'SST00000004'), -- Wednesday Prayer Service
('GST00000022', 'CHU00000001', 'GRP00000007', 'SST00000004'), -- Nursery
('GST00000023', 'CHU00000001', 'GRP00000008', 'SST00000004'), -- Preschool
('GST00000024', 'CHU00000001', 'GRP00000009', 'SST00000004'), -- Elementary K-2
('GST00000025', 'CHU00000001', 'GRP00000010', 'SST00000004'); -- Elementary 3-5

-- Demo Sessions (March-May 2025)
INSERT INTO sessions (id, churchId, groupId, serviceTimeId, sessionDate) VALUES 
('SES00000001', 'CHU00000001', 'GRP00000001', 'SST00000001', '2024-03-17 09:00:00'),
('SES00000002', 'CHU00000001', 'GRP00000001', 'SST00000002', '2024-03-17 10:30:00'),
('SES00000003', 'CHU00000001', 'GRP00000001', 'SST00000003', '2024-03-17 18:00:00'),
('SES00000004', 'CHU00000001', 'GRP00000001', 'SST00000004', '2024-03-20 19:00:00');

-- Sample Visits (March 2025)
INSERT INTO visits (id, churchId, personId, serviceId, groupId, visitDate, checkinTime, addedBy) VALUES 
-- March 2, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000001', 'CHU00000001', 'PER00000001', 'SER00000001', 'GRP00000001', '2024-03-17 09:00:00', '2024-03-17 08:45:00', 'USR00000001'), -- John Smith
('VIS00000002', 'CHU00000001', 'PER00000002', 'SER00000001', 'GRP00000001', '2024-03-17 09:00:00', '2024-03-17 08:50:00', 'USR00000001'), -- Mary Smith
('VIS00000003', 'CHU00000001', 'PER00000003', 'SER00000001', 'GRP00000009', '2024-03-17 09:00:00', '2024-03-17 08:45:00', 'USR00000001'), -- James Smith
('VIS00000004', 'CHU00000001', 'PER00000004', 'SER00000001', 'GRP00000009', '2024-03-17 09:00:00', '2024-03-17 08:50:00', 'USR00000001'), -- Sarah Smith
('VIS00000005', 'CHU00000001', 'PER00000005', 'SER00000001', 'GRP00000007', '2024-03-17 09:00:00', '2024-03-17 08:45:00', 'USR00000001'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000006', 'CHU00000001', 'PER00000006', 'SER00000001', 'GRP00000001', '2024-03-17 09:00:00', '2024-03-17 08:45:00', 'USR00000001'), -- Robert Johnson
('VIS00000007', 'CHU00000001', 'PER00000007', 'SER00000001', 'GRP00000001', '2024-03-17 09:00:00', '2024-03-17 08:50:00', 'USR00000001'), -- Patricia Johnson
('VIS00000008', 'CHU00000001', 'PER00000008', 'SER00000001', 'GRP00000010', '2024-03-17 09:00:00', '2024-03-17 08:45:00', 'USR00000001'), -- Elizabeth Johnson
('VIS00000009', 'CHU00000001', 'PER00000009', 'SER00000001', 'GRP00000010', '2024-03-17 09:00:00', '2024-03-17 08:50:00', 'USR00000001'), -- David Johnson
('VIS00000010', 'CHU00000001', 'PER00000010', 'SER00000001', 'GRP00000006', '2024-03-17 09:00:00', '2024-03-17 08:45:00', 'USR00000001'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000011', 'CHU00000001', 'PER00000011', 'SER00000002', 'GRP00000001', '2024-03-17 10:30:00', '2024-03-17 10:15:00', 'USR00000001'), -- Jennifer Williams
('VIS00000012', 'CHU00000001', 'PER00000012', 'SER00000002', 'GRP00000001', '2024-03-17 10:30:00', '2024-03-17 10:15:00', 'USR00000001'), -- Christopher Williams
('VIS00000013', 'CHU00000001', 'PER00000013', 'SER00000002', 'GRP00000009', '2024-03-17 10:30:00', '2024-03-17 10:15:00', 'USR00000001'), -- Emma Williams

-- Brown Family (Visitors)
('VIS00000014', 'CHU00000001', 'PER00000014', 'SER00000002', 'GRP00000001', '2024-03-17 10:30:00', '2024-03-17 10:15:00', 'USR00000001'), -- Daniel Brown
('VIS00000015', 'CHU00000001', 'PER00000015', 'SER00000002', 'GRP00000001', '2024-03-17 10:30:00', '2024-03-17 10:15:00', 'USR00000001'), -- Lisa Brown

-- March 9, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000016', 'CHU00000001', 'PER00000001', 'SER00000001', 'GRP00000001', '2024-03-09 09:00:00', '2024-03-09 08:45:00', 'USR00000001'), -- John Smith
('VIS00000017', 'CHU00000001', 'PER00000002', 'SER00000001', 'GRP00000001', '2024-03-09 09:00:00', '2024-03-09 08:50:00', 'USR00000001'), -- Mary Smith
('VIS00000018', 'CHU00000001', 'PER00000003', 'SER00000001', 'GRP00000009', '2024-03-09 09:00:00', '2024-03-09 08:45:00', 'USR00000001'), -- James Smith
('VIS00000019', 'CHU00000001', 'PER00000004', 'SER00000001', 'GRP00000009', '2024-03-09 09:00:00', '2024-03-09 08:50:00', 'USR00000001'), -- Sarah Smith
('VIS00000020', 'CHU00000001', 'PER00000005', 'SER00000001', 'GRP00000007', '2024-03-09 09:00:00', '2024-03-09 08:45:00', 'USR00000001'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000021', 'CHU00000001', 'PER00000006', 'SER00000001', 'GRP00000001', '2024-03-09 09:00:00', '2024-03-09 08:45:00', 'USR00000001'), -- Robert Johnson
('VIS00000022', 'CHU00000001', 'PER00000007', 'SER00000001', 'GRP00000001', '2024-03-09 09:00:00', '2024-03-09 08:50:00', 'USR00000001'), -- Patricia Johnson
('VIS00000023', 'CHU00000001', 'PER00000008', 'SER00000001', 'GRP00000010', '2024-03-09 09:00:00', '2024-03-09 08:45:00', 'USR00000001'), -- Elizabeth Johnson
('VIS00000024', 'CHU00000001', 'PER00000009', 'SER00000001', 'GRP00000010', '2024-03-09 09:00:00', '2024-03-09 08:50:00', 'USR00000001'), -- David Johnson
('VIS00000025', 'CHU00000001', 'PER00000010', 'SER00000001', 'GRP00000006', '2024-03-09 09:00:00', '2024-03-09 08:45:00', 'USR00000001'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000026', 'CHU00000001', 'PER00000011', 'SER00000002', 'GRP00000001', '2024-03-09 10:30:00', '2024-03-09 10:15:00', 'USR00000001'), -- Jennifer Williams
('VIS00000027', 'CHU00000001', 'PER00000012', 'SER00000002', 'GRP00000001', '2024-03-09 10:30:00', '2024-03-09 10:15:00', 'USR00000001'), -- Christopher Williams
('VIS00000028', 'CHU00000001', 'PER00000013', 'SER00000002', 'GRP00000009', '2024-03-09 10:30:00', '2024-03-09 10:15:00', 'USR00000001'), -- Emma Williams

-- March 16, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000029', 'CHU00000001', 'PER00000001', 'SER00000001', 'GRP00000001', '2024-03-16 09:00:00', '2024-03-16 08:45:00', 'USR00000001'), -- John Smith
('VIS00000030', 'CHU00000001', 'PER00000002', 'SER00000001', 'GRP00000001', '2024-03-16 09:00:00', '2024-03-16 08:50:00', 'USR00000001'), -- Mary Smith
('VIS00000031', 'CHU00000001', 'PER00000003', 'SER00000001', 'GRP00000009', '2024-03-16 09:00:00', '2024-03-16 08:45:00', 'USR00000001'), -- James Smith
('VIS00000032', 'CHU00000001', 'PER00000004', 'SER00000001', 'GRP00000009', '2024-03-16 09:00:00', '2024-03-16 08:50:00', 'USR00000001'), -- Sarah Smith
('VIS00000033', 'CHU00000001', 'PER00000005', 'SER00000001', 'GRP00000007', '2024-03-16 09:00:00', '2024-03-16 08:45:00', 'USR00000001'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000034', 'CHU00000001', 'PER00000006', 'SER00000001', 'GRP00000001', '2024-03-16 09:00:00', '2024-03-16 08:45:00', 'USR00000001'), -- Robert Johnson
('VIS00000035', 'CHU00000001', 'PER00000007', 'SER00000001', 'GRP00000001', '2024-03-16 09:00:00', '2024-03-16 08:50:00', 'USR00000001'), -- Patricia Johnson
('VIS00000036', 'CHU00000001', 'PER00000008', 'SER00000001', 'GRP00000010', '2024-03-16 09:00:00', '2024-03-16 08:45:00', 'USR00000001'), -- Elizabeth Johnson
('VIS00000037', 'CHU00000001', 'PER00000009', 'SER00000001', 'GRP00000010', '2024-03-16 09:00:00', '2024-03-16 08:50:00', 'USR00000001'), -- David Johnson
('VIS00000038', 'CHU00000001', 'PER00000010', 'SER00000001', 'GRP00000006', '2024-03-16 09:00:00', '2024-03-16 08:45:00', 'USR00000001'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000039', 'CHU00000001', 'PER00000011', 'SER00000002', 'GRP00000001', '2024-03-16 10:30:00', '2024-03-16 10:15:00', 'USR00000001'), -- Jennifer Williams
('VIS00000040', 'CHU00000001', 'PER00000012', 'SER00000002', 'GRP00000001', '2024-03-16 10:30:00', '2024-03-16 10:15:00', 'USR00000001'), -- Christopher Williams
('VIS00000041', 'CHU00000001', 'PER00000013', 'SER00000002', 'GRP00000009', '2024-03-16 10:30:00', '2024-03-16 10:15:00', 'USR00000001'), -- Emma Williams

-- March 23, 2025 (Palm Sunday - Higher Attendance)
-- Smith Family (Regular attendees - both services)
('VIS00000042', 'CHU00000001', 'PER00000001', 'SER00000001', 'GRP00000001', '2024-03-23 09:00:00', '2024-03-23 08:45:00', 'USR00000001'), -- John Smith
('VIS00000043', 'CHU00000001', 'PER00000002', 'SER00000001', 'GRP00000001', '2024-03-23 09:00:00', '2024-03-23 08:50:00', 'USR00000001'), -- Mary Smith
('VIS00000044', 'CHU00000001', 'PER00000003', 'SER00000001', 'GRP00000009', '2024-03-23 09:00:00', '2024-03-23 08:45:00', 'USR00000001'), -- James Smith
('VIS00000045', 'CHU00000001', 'PER00000004', 'SER00000001', 'GRP00000009', '2024-03-23 09:00:00', '2024-03-23 08:50:00', 'USR00000001'), -- Sarah Smith
('VIS00000046', 'CHU00000001', 'PER00000005', 'SER00000001', 'GRP00000007', '2024-03-23 09:00:00', '2024-03-23 08:45:00', 'USR00000001'), -- Michael Smith

-- Johnson Family (Regular attendees - both services for Palm Sunday)
('VIS00000047', 'CHU00000001', 'PER00000006', 'SER00000001', 'GRP00000001', '2024-03-23 09:00:00', '2024-03-23 08:45:00', 'USR00000001'), -- Robert Johnson
('VIS00000048', 'CHU00000001', 'PER00000007', 'SER00000001', 'GRP00000001', '2024-03-23 09:00:00', '2024-03-23 08:50:00', 'USR00000001'), -- Patricia Johnson
('VIS00000049', 'CHU00000001', 'PER00000008', 'SER00000001', 'GRP00000010', '2024-03-23 09:00:00', '2024-03-23 08:45:00', 'USR00000001'), -- Elizabeth Johnson
('VIS00000050', 'CHU00000001', 'PER00000009', 'SER00000001', 'GRP00000010', '2024-03-23 09:00:00', '2024-03-23 08:50:00', 'USR00000001'), -- David Johnson
('VIS00000051', 'CHU00000001', 'PER00000010', 'SER00000001', 'GRP00000006', '2024-03-23 09:00:00', '2024-03-23 08:45:00', 'USR00000001'), -- Margaret Johnson

-- Williams Family (Regular attendees - both services for Palm Sunday)
('VIS00000052', 'CHU00000001', 'PER00000011', 'SER00000002', 'GRP00000001', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Jennifer Williams
('VIS00000053', 'CHU00000001', 'PER00000012', 'SER00000002', 'GRP00000001', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Christopher Williams
('VIS00000054', 'CHU00000001', 'PER00000013', 'SER00000002', 'GRP00000009', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Emma Williams

-- Additional Visitors for Palm Sunday
('VIS00000055', 'CHU00000001', 'PER00000014', 'SER00000002', 'GRP00000001', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Daniel Brown
('VIS00000056', 'CHU00000001', 'PER00000015', 'SER00000002', 'GRP00000001', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Lisa Brown
('VIS00000057', 'CHU00000001', 'PER00000016', 'SER00000002', 'GRP00000009', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Thomas Wilson
('VIS00000058', 'CHU00000001', 'PER00000017', 'SER00000002', 'GRP00000009', '2024-03-23 10:30:00', '2024-03-23 10:15:00', 'USR00000001'), -- Susan Wilson

-- March 30, 2025 (Easter Sunday - Highest Attendance)
-- Smith Family (Regular attendees - both services)
('VIS00000059', 'CHU00000001', 'PER00000001', 'SER00000001', 'GRP00000001', '2024-03-30 09:00:00', '2024-03-30 08:45:00', 'USR00000001'), -- John Smith
('VIS00000060', 'CHU00000001', 'PER00000002', 'SER00000001', 'GRP00000001', '2024-03-30 09:00:00', '2024-03-30 08:50:00', 'USR00000001'), -- Mary Smith
('VIS00000061', 'CHU00000001', 'PER00000003', 'SER00000001', 'GRP00000009', '2024-03-30 09:00:00', '2024-03-30 08:45:00', 'USR00000001'), -- James Smith
('VIS00000062', 'CHU00000001', 'PER00000004', 'SER00000001', 'GRP00000009', '2024-03-30 09:00:00', '2024-03-30 08:50:00', 'USR00000001'), -- Sarah Smith
('VIS00000063', 'CHU00000001', 'PER00000005', 'SER00000001', 'GRP00000007', '2024-03-30 09:00:00', '2024-03-30 08:45:00', 'USR00000001'), -- Michael Smith

-- Johnson Family (Regular attendees - both services for Easter)
('VIS00000064', 'CHU00000001', 'PER00000006', 'SER00000001', 'GRP00000001', '2024-03-30 09:00:00', '2024-03-30 08:45:00', 'USR00000001'), -- Robert Johnson
('VIS00000065', 'CHU00000001', 'PER00000007', 'SER00000001', 'GRP00000001', '2024-03-30 09:00:00', '2024-03-30 08:50:00', 'USR00000001'), -- Patricia Johnson
('VIS00000066', 'CHU00000001', 'PER00000008', 'SER00000001', 'GRP00000010', '2024-03-30 09:00:00', '2024-03-30 08:45:00', 'USR00000001'), -- Elizabeth Johnson
('VIS00000067', 'CHU00000001', 'PER00000009', 'SER00000001', 'GRP00000010', '2024-03-30 09:00:00', '2024-03-30 08:50:00', 'USR00000001'), -- David Johnson
('VIS00000068', 'CHU00000001', 'PER00000010', 'SER00000001', 'GRP00000006', '2024-03-30 09:00:00', '2024-03-30 08:45:00', 'USR00000001'), -- Margaret Johnson

-- Williams Family (Regular attendees - both services for Easter)
('VIS00000069', 'CHU00000001', 'PER00000011', 'SER00000002', 'GRP00000001', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Jennifer Williams
('VIS00000070', 'CHU00000001', 'PER00000012', 'SER00000002', 'GRP00000001', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Christopher Williams
('VIS00000071', 'CHU00000001', 'PER00000013', 'SER00000002', 'GRP00000009', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Emma Williams

-- Additional Visitors for Easter
('VIS00000072', 'CHU00000001', 'PER00000014', 'SER00000002', 'GRP00000001', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Daniel Brown
('VIS00000073', 'CHU00000001', 'PER00000015', 'SER00000002', 'GRP00000001', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Lisa Brown
('VIS00000074', 'CHU00000001', 'PER00000016', 'SER00000002', 'GRP00000009', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Thomas Wilson
('VIS00000075', 'CHU00000001', 'PER00000017', 'SER00000002', 'GRP00000009', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Susan Wilson
('VIS00000076', 'CHU00000001', 'PER00000018', 'SER00000002', 'GRP00000007', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Richard Davis
('VIS00000077', 'CHU00000001', 'PER00000019', 'SER00000002', 'GRP00000007', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'), -- Nancy Davis
('VIS00000078', 'CHU00000001', 'PER00000020', 'SER00000002', 'GRP00000009', '2024-03-30 10:30:00', '2024-03-30 10:15:00', 'USR00000001'); -- Robert Davis

-- Sample VisitSessions (March 2025)
INSERT INTO visitSessions (id, churchId, visitId, sessionId) VALUES 
('VST00000001', 'CHU00000001', 'VIS00000001', 'SES00000001'),
('VST00000002', 'CHU00000001', 'VIS00000002', 'SES00000001');

-- April 2025 Visits
INSERT INTO visits (id, churchId, personId, visitDate, visitStatus) VALUES
-- April 6, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000079', 'CHU00000001', 'PER00000001', '2025-04-06', 'Attended'), -- John Smith
('VIS00000080', 'CHU00000001', 'PER00000002', '2025-04-06', 'Attended'), -- Mary Smith
('VIS00000081', 'CHU00000001', 'PER00000003', '2025-04-06', 'Attended'), -- James Smith
('VIS00000082', 'CHU00000001', 'PER00000004', '2025-04-06', 'Attended'), -- Sarah Smith
('VIS00000083', 'CHU00000001', 'PER00000005', '2025-04-06', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000084', 'CHU00000001', 'PER00000006', '2025-04-06', 'Attended'), -- Robert Johnson
('VIS00000085', 'CHU00000001', 'PER00000007', '2025-04-06', 'Attended'), -- Patricia Johnson
('VIS00000086', 'CHU00000001', 'PER00000008', '2025-04-06', 'Attended'), -- Elizabeth Johnson
('VIS00000087', 'CHU00000001', 'PER00000009', '2025-04-06', 'Attended'), -- David Johnson
('VIS00000088', 'CHU00000001', 'PER00000010', '2025-04-06', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000089', 'CHU00000001', 'PER00000011', '2025-04-06', 'Attended'), -- Jennifer Williams
('VIS00000090', 'CHU00000001', 'PER00000012', '2025-04-06', 'Attended'), -- Christopher Williams
('VIS00000091', 'CHU00000001', 'PER00000013', '2025-04-06', 'Attended'), -- Emma Williams

-- April 13, 2025 (Spring Break - Lower Attendance)
-- Smith Family (Partial attendance - only 10:30 AM)
('VIS00000092', 'CHU00000001', 'PER00000001', '2025-04-13', 'Attended'), -- John Smith
('VIS00000093', 'CHU00000001', 'PER00000002', '2025-04-13', 'Attended'), -- Mary Smith
('VIS00000094', 'CHU00000001', 'PER00000003', '2025-04-13', 'Attended'), -- James Smith
('VIS00000095', 'CHU00000001', 'PER00000004', '2025-04-13', 'Attended'), -- Sarah Smith
('VIS00000096', 'CHU00000001', 'PER00000005', '2025-04-13', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000097', 'CHU00000001', 'PER00000006', '2025-04-13', 'Attended'), -- Robert Johnson
('VIS00000098', 'CHU00000001', 'PER00000007', '2025-04-13', 'Attended'), -- Patricia Johnson
('VIS00000099', 'CHU00000001', 'PER00000008', '2025-04-13', 'Attended'), -- Elizabeth Johnson
('VIS00000100', 'CHU00000001', 'PER00000009', '2025-04-13', 'Attended'), -- David Johnson
('VIS00000101', 'CHU00000001', 'PER00000010', '2025-04-13', 'Attended'), -- Margaret Johnson

-- Williams Family (Away for Spring Break)
-- No visits recorded

-- April 20, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000102', 'CHU00000001', 'PER00000001', '2025-04-20', 'Attended'), -- John Smith
('VIS00000103', 'CHU00000001', 'PER00000002', '2025-04-20', 'Attended'), -- Mary Smith
('VIS00000104', 'CHU00000001', 'PER00000003', '2025-04-20', 'Attended'), -- James Smith
('VIS00000105', 'CHU00000001', 'PER00000004', '2025-04-20', 'Attended'), -- Sarah Smith
('VIS00000106', 'CHU00000001', 'PER00000005', '2025-04-20', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000107', 'CHU00000001', 'PER00000006', '2025-04-20', 'Attended'), -- Robert Johnson
('VIS00000108', 'CHU00000001', 'PER00000007', '2025-04-20', 'Attended'), -- Patricia Johnson
('VIS00000109', 'CHU00000001', 'PER00000008', '2025-04-20', 'Attended'), -- Elizabeth Johnson
('VIS00000110', 'CHU00000001', 'PER00000009', '2025-04-20', 'Attended'), -- David Johnson
('VIS00000111', 'CHU00000001', 'PER00000010', '2025-04-20', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000112', 'CHU00000001', 'PER00000011', '2025-04-20', 'Attended'), -- Jennifer Williams
('VIS00000113', 'CHU00000001', 'PER00000012', '2025-04-20', 'Attended'), -- Christopher Williams
('VIS00000114', 'CHU00000001', 'PER00000013', '2025-04-20', 'Attended'), -- Emma Williams

-- April 27, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000115', 'CHU00000001', 'PER00000001', '2025-04-27', 'Attended'), -- John Smith
('VIS00000116', 'CHU00000001', 'PER00000002', '2025-04-27', 'Attended'), -- Mary Smith
('VIS00000117', 'CHU00000001', 'PER00000003', '2025-04-27', 'Attended'), -- James Smith
('VIS00000118', 'CHU00000001', 'PER00000004', '2025-04-27', 'Attended'), -- Sarah Smith
('VIS00000119', 'CHU00000001', 'PER00000005', '2025-04-27', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000120', 'CHU00000001', 'PER00000006', '2025-04-27', 'Attended'), -- Robert Johnson
('VIS00000121', 'CHU00000001', 'PER00000007', '2025-04-27', 'Attended'), -- Patricia Johnson
('VIS00000122', 'CHU00000001', 'PER00000008', '2025-04-27', 'Attended'), -- Elizabeth Johnson
('VIS00000123', 'CHU00000001', 'PER00000009', '2025-04-27', 'Attended'), -- David Johnson
('VIS00000124', 'CHU00000001', 'PER00000010', '2025-04-27', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000125', 'CHU00000001', 'PER00000011', '2025-04-27', 'Attended'), -- Jennifer Williams
('VIS00000126', 'CHU00000001', 'PER00000012', '2025-04-27', 'Attended'), -- Christopher Williams
('VIS00000127', 'CHU00000001', 'PER00000013', '2025-04-27', 'Attended'), -- Emma Williams

-- April VisitSessions
INSERT INTO visitSessions (id, churchId, visitId, sessionId) VALUES
-- April 6, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000120', 'CHU00000001', 'VIS00000079', 'SES00000021'), -- John Smith - Main Service
('VSE00000121', 'CHU00000001', 'VIS00000080', 'SES00000021'), -- Mary Smith - Main Service
('VSE00000122', 'CHU00000001', 'VIS00000081', 'SES00000021'), -- James Smith - Elementary K-2
('VSE00000123', 'CHU00000001', 'VIS00000082', 'SES00000021'), -- Sarah Smith - Elementary K-2
('VSE00000124', 'CHU00000001', 'VIS00000083', 'SES00000021'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000125', 'CHU00000001', 'VIS00000079', 'SES00000022'), -- John Smith - Main Service
('VSE00000126', 'CHU00000001', 'VIS00000080', 'SES00000022'), -- Mary Smith - Main Service
('VSE00000127', 'CHU00000001', 'VIS00000081', 'SES00000022'), -- James Smith - Elementary K-2
('VSE00000128', 'CHU00000001', 'VIS00000082', 'SES00000022'), -- Sarah Smith - Elementary K-2
('VSE00000129', 'CHU00000001', 'VIS00000083', 'SES00000022'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000130', 'CHU00000001', 'VIS00000084', 'SES00000021'), -- Robert Johnson - Main Service
('VSE00000131', 'CHU00000001', 'VIS00000085', 'SES00000021'), -- Patricia Johnson - Main Service
('VSE00000132', 'CHU00000001', 'VIS00000086', 'SES00000021'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000133', 'CHU00000001', 'VIS00000087', 'SES00000021'), -- David Johnson - Elementary 3-5
('VSE00000134', 'CHU00000001', 'VIS00000088', 'SES00000021'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000135', 'CHU00000001', 'VIS00000089', 'SES00000022'), -- Jennifer Williams - Main Service
('VSE00000136', 'CHU00000001', 'VIS00000090', 'SES00000022'), -- Christopher Williams - Main Service
('VSE00000137', 'CHU00000001', 'VIS00000091', 'SES00000022'), -- Emma Williams - Main Service

-- April 13, 2025 (Spring Break - Lower Attendance)
-- Smith Family 10:30 AM Service Only
('VSE00000138', 'CHU00000001', 'VIS00000092', 'SES00000026'), -- John Smith - Main Service
('VSE00000139', 'CHU00000001', 'VIS00000093', 'SES00000026'), -- Mary Smith - Main Service
('VSE00000140', 'CHU00000001', 'VIS00000094', 'SES00000026'), -- James Smith - Elementary K-2
('VSE00000141', 'CHU00000001', 'VIS00000095', 'SES00000026'), -- Sarah Smith - Elementary K-2
('VSE00000142', 'CHU00000001', 'VIS00000096', 'SES00000026'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000143', 'CHU00000001', 'VIS00000097', 'SES00000025'), -- Robert Johnson - Main Service
('VSE00000144', 'CHU00000001', 'VIS00000098', 'SES00000025'), -- Patricia Johnson - Main Service
('VSE00000145', 'CHU00000001', 'VIS00000099', 'SES00000025'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000146', 'CHU00000001', 'VIS00000100', 'SES00000025'), -- David Johnson - Elementary 3-5
('VSE00000147', 'CHU00000001', 'VIS00000101', 'SES00000025'), -- Margaret Johnson - Senior Adults

-- April 20, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000148', 'CHU00000001', 'VIS00000102', 'SES00000029'), -- John Smith - Main Service
('VSE00000149', 'CHU00000001', 'VIS00000103', 'SES00000029'), -- Mary Smith - Main Service
('VSE00000150', 'CHU00000001', 'VIS00000104', 'SES00000029'), -- James Smith - Elementary K-2
('VSE00000151', 'CHU00000001', 'VIS00000105', 'SES00000029'), -- Sarah Smith - Elementary K-2
('VSE00000152', 'CHU00000001', 'VIS00000106', 'SES00000029'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000153', 'CHU00000001', 'VIS00000102', 'SES00000030'), -- John Smith - Main Service
('VSE00000154', 'CHU00000001', 'VIS00000103', 'SES00000030'), -- Mary Smith - Main Service
('VSE00000155', 'CHU00000001', 'VIS00000104', 'SES00000030'), -- James Smith - Elementary K-2
('VSE00000156', 'CHU00000001', 'VIS00000105', 'SES00000030'), -- Sarah Smith - Elementary K-2
('VSE00000157', 'CHU00000001', 'VIS00000106', 'SES00000030'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000158', 'CHU00000001', 'VIS00000107', 'SES00000029'), -- Robert Johnson - Main Service
('VSE00000159', 'CHU00000001', 'VIS00000108', 'SES00000029'), -- Patricia Johnson - Main Service
('VSE00000160', 'CHU00000001', 'VIS00000109', 'SES00000029'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000161', 'CHU00000001', 'VIS00000110', 'SES00000029'), -- David Johnson - Elementary 3-5
('VSE00000162', 'CHU00000001', 'VIS00000111', 'SES00000029'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000163', 'CHU00000001', 'VIS00000112', 'SES00000030'), -- Jennifer Williams - Main Service
('VSE00000164', 'CHU00000001', 'VIS00000113', 'SES00000030'), -- Christopher Williams - Main Service
('VSE00000165', 'CHU00000001', 'VIS00000114', 'SES00000030'), -- Emma Williams - Main Service

-- April 27, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000166', 'CHU00000001', 'VIS00000115', 'SES00000033'), -- John Smith - Main Service
('VSE00000167', 'CHU00000001', 'VIS00000116', 'SES00000033'), -- Mary Smith - Main Service
('VSE00000168', 'CHU00000001', 'VIS00000117', 'SES00000033'), -- James Smith - Elementary K-2
('VSE00000169', 'CHU00000001', 'VIS00000118', 'SES00000033'), -- Sarah Smith - Elementary K-2
('VSE00000170', 'CHU00000001', 'VIS00000119', 'SES00000033'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000171', 'CHU00000001', 'VIS00000115', 'SES00000034'), -- John Smith - Main Service
('VSE00000172', 'CHU00000001', 'VIS00000116', 'SES00000034'), -- Mary Smith - Main Service
('VSE00000173', 'CHU00000001', 'VIS00000117', 'SES00000034'), -- James Smith - Elementary K-2
('VSE00000174', 'CHU00000001', 'VIS00000118', 'SES00000034'), -- Sarah Smith - Elementary K-2
('VSE00000175', 'CHU00000001', 'VIS00000119', 'SES00000034'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000176', 'CHU00000001', 'VIS00000120', 'SES00000033'), -- Robert Johnson - Main Service
('VSE00000177', 'CHU00000001', 'VIS00000121', 'SES00000033'), -- Patricia Johnson - Main Service
('VSE00000178', 'CHU00000001', 'VIS00000122', 'SES00000033'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000179', 'CHU00000001', 'VIS00000123', 'SES00000033'), -- David Johnson - Elementary 3-5
('VSE00000180', 'CHU00000001', 'VIS00000124', 'SES00000033'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000181', 'CHU00000001', 'VIS00000125', 'SES00000034'), -- Jennifer Williams - Main Service
('VSE00000182', 'CHU00000001', 'VIS00000126', 'SES00000034'), -- Christopher Williams - Main Service
('VSE00000183', 'CHU00000001', 'VIS00000127', 'SES00000034'), -- Emma Williams - Main Service

-- May 2025 Visits
INSERT INTO visits (id, churchId, personId, visitDate, visitStatus) VALUES
-- May 4, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000128', 'CHU00000001', 'PER00000001', '2025-05-04', 'Attended'), -- John Smith
('VIS00000129', 'CHU00000001', 'PER00000002', '2025-05-04', 'Attended'), -- Mary Smith
('VIS00000130', 'CHU00000001', 'PER00000003', '2025-05-04', 'Attended'), -- James Smith
('VIS00000131', 'CHU00000001', 'PER00000004', '2025-05-04', 'Attended'), -- Sarah Smith
('VIS00000132', 'CHU00000001', 'PER00000005', '2025-05-04', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000133', 'CHU00000001', 'PER00000006', '2025-05-04', 'Attended'), -- Robert Johnson
('VIS00000134', 'CHU00000001', 'PER00000007', '2025-05-04', 'Attended'), -- Patricia Johnson
('VIS00000135', 'CHU00000001', 'PER00000008', '2025-05-04', 'Attended'), -- Elizabeth Johnson
('VIS00000136', 'CHU00000001', 'PER00000009', '2025-05-04', 'Attended'), -- David Johnson
('VIS00000137', 'CHU00000001', 'PER00000010', '2025-05-04', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000138', 'CHU00000001', 'PER00000011', '2025-05-04', 'Attended'), -- Jennifer Williams
('VIS00000139', 'CHU00000001', 'PER00000012', '2025-05-04', 'Attended'), -- Christopher Williams
('VIS00000140', 'CHU00000001', 'PER00000013', '2025-05-04', 'Attended'), -- Emma Williams

-- May 11, 2025 (Mother's Day - Higher Attendance)
-- Smith Family (Regular attendees - both services)
('VIS00000141', 'CHU00000001', 'PER00000001', '2025-05-11', 'Attended'), -- John Smith
('VIS00000142', 'CHU00000001', 'PER00000002', '2025-05-11', 'Attended'), -- Mary Smith
('VIS00000143', 'CHU00000001', 'PER00000003', '2025-05-11', 'Attended'), -- James Smith
('VIS00000144', 'CHU00000001', 'PER00000004', '2025-05-11', 'Attended'), -- Sarah Smith
('VIS00000145', 'CHU00000001', 'PER00000005', '2025-05-11', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - both services for Mother's Day)
('VIS00000146', 'CHU00000001', 'PER00000006', '2025-05-11', 'Attended'), -- Robert Johnson
('VIS00000147', 'CHU00000001', 'PER00000007', '2025-05-11', 'Attended'), -- Patricia Johnson
('VIS00000148', 'CHU00000001', 'PER00000008', '2025-05-11', 'Attended'), -- Elizabeth Johnson
('VIS00000149', 'CHU00000001', 'PER00000009', '2025-05-11', 'Attended'), -- David Johnson
('VIS00000150', 'CHU00000001', 'PER00000010', '2025-05-11', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - both services for Mother's Day)
('VIS00000151', 'CHU00000001', 'PER00000011', '2025-05-11', 'Attended'), -- Jennifer Williams
('VIS00000152', 'CHU00000001', 'PER00000012', '2025-05-11', 'Attended'), -- Christopher Williams
('VIS00000153', 'CHU00000001', 'PER00000013', '2025-05-11', 'Attended'), -- Emma Williams

-- Additional Visitors for Mother's Day
('VIS00000154', 'CHU00000001', 'PER00000014', '2025-05-11', 'Visited'), -- Daniel Brown
('VIS00000155', 'CHU00000001', 'PER00000015', '2025-05-11', 'Visited'), -- Lisa Brown
('VIS00000156', 'CHU00000001', 'PER00000016', '2025-05-11', 'Visited'), -- Thomas Wilson
('VIS00000157', 'CHU00000001', 'PER00000017', '2025-05-11', 'Visited'), -- Susan Wilson

-- May 18, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000158', 'CHU00000001', 'PER00000001', '2025-05-18', 'Attended'), -- John Smith
('VIS00000159', 'CHU00000001', 'PER00000002', '2025-05-18', 'Attended'), -- Mary Smith
('VIS00000160', 'CHU00000001', 'PER00000003', '2025-05-18', 'Attended'), -- James Smith
('VIS00000161', 'CHU00000001', 'PER00000004', '2025-05-18', 'Attended'), -- Sarah Smith
('VIS00000162', 'CHU00000001', 'PER00000005', '2025-05-18', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000163', 'CHU00000001', 'PER00000006', '2025-05-18', 'Attended'), -- Robert Johnson
('VIS00000164', 'CHU00000001', 'PER00000007', '2025-05-18', 'Attended'), -- Patricia Johnson
('VIS00000165', 'CHU00000001', 'PER00000008', '2025-05-18', 'Attended'), -- Elizabeth Johnson
('VIS00000166', 'CHU00000001', 'PER00000009', '2025-05-18', 'Attended'), -- David Johnson
('VIS00000167', 'CHU00000001', 'PER00000010', '2025-05-18', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000168', 'CHU00000001', 'PER00000011', '2025-05-18', 'Attended'), -- Jennifer Williams
('VIS00000169', 'CHU00000001', 'PER00000012', '2025-05-18', 'Attended'), -- Christopher Williams
('VIS00000170', 'CHU00000001', 'PER00000013', '2025-05-18', 'Attended'), -- Emma Williams

-- May 25, 2025 (Memorial Day Weekend - Lower Attendance)
-- Smith Family (Partial attendance - only 10:30 AM)
('VIS00000171', 'CHU00000001', 'PER00000001', '2025-05-25', 'Attended'), -- John Smith
('VIS00000172', 'CHU00000001', 'PER00000002', '2025-05-25', 'Attended'), -- Mary Smith
('VIS00000173', 'CHU00000001', 'PER00000003', '2025-05-25', 'Attended'), -- James Smith
('VIS00000174', 'CHU00000001', 'PER00000004', '2025-05-25', 'Attended'), -- Sarah Smith
('VIS00000175', 'CHU00000001', 'PER00000005', '2025-05-25', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000176', 'CHU00000001', 'PER00000006', '2025-05-25', 'Attended'), -- Robert Johnson
('VIS00000177', 'CHU00000001', 'PER00000007', '2025-05-25', 'Attended'), -- Patricia Johnson
('VIS00000178', 'CHU00000001', 'PER00000008', '2025-05-25', 'Attended'), -- Elizabeth Johnson
('VIS00000179', 'CHU00000001', 'PER00000009', '2025-05-25', 'Attended'), -- David Johnson
('VIS00000180', 'CHU00000001', 'PER00000010', '2025-05-25', 'Attended'), -- Margaret Johnson

-- Williams Family (Away for Memorial Day Weekend)
-- No visits recorded

-- May VisitSessions
INSERT INTO visitSessions (id, churchId, visitId, sessionId) VALUES
-- May 4, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000184', 'CHU00000001', 'VIS00000128', 'SES00000037'), -- John Smith - Main Service
('VSE00000185', 'CHU00000001', 'VIS00000129', 'SES00000037'), -- Mary Smith - Main Service
('VSE00000186', 'CHU00000001', 'VIS00000130', 'SES00000037'), -- James Smith - Elementary K-2
('VSE00000187', 'CHU00000001', 'VIS00000131', 'SES00000037'), -- Sarah Smith - Elementary K-2
('VSE00000188', 'CHU00000001', 'VIS00000132', 'SES00000037'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000189', 'CHU00000001', 'VIS00000128', 'SES00000038'), -- John Smith - Main Service
('VSE00000190', 'CHU00000001', 'VIS00000129', 'SES00000038'), -- Mary Smith - Main Service
('VSE00000191', 'CHU00000001', 'VIS00000130', 'SES00000038'), -- James Smith - Elementary K-2
('VSE00000192', 'CHU00000001', 'VIS00000131', 'SES00000038'), -- Sarah Smith - Elementary K-2
('VSE00000193', 'CHU00000001', 'VIS00000132', 'SES00000038'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000194', 'CHU00000001', 'VIS00000133', 'SES00000037'), -- Robert Johnson - Main Service
('VSE00000195', 'CHU00000001', 'VIS00000134', 'SES00000037'), -- Patricia Johnson - Main Service
('VSE00000196', 'CHU00000001', 'VIS00000135', 'SES00000037'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000197', 'CHU00000001', 'VIS00000136', 'SES00000037'), -- David Johnson - Elementary 3-5
('VSE00000198', 'CHU00000001', 'VIS00000137', 'SES00000037'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000199', 'CHU00000001', 'VIS00000138', 'SES00000038'), -- Jennifer Williams - Main Service
('VSE00000200', 'CHU00000001', 'VIS00000139', 'SES00000038'), -- Christopher Williams - Main Service
('VSE00000201', 'CHU00000001', 'VIS00000140', 'SES00000038'), -- Emma Williams - Main Service

-- May 11, 2025 (Mother's Day - Higher Attendance)
-- Smith Family 9:00 AM Service
('VSE00000202', 'CHU00000001', 'VIS00000141', 'SES00000041'), -- John Smith - Main Service
('VSE00000203', 'CHU00000001', 'VIS00000142', 'SES00000041'), -- Mary Smith - Main Service
('VSE00000204', 'CHU00000001', 'VIS00000143', 'SES00000041'), -- James Smith - Elementary K-2
('VSE00000205', 'CHU00000001', 'VIS00000144', 'SES00000041'), -- Sarah Smith - Elementary K-2
('VSE00000206', 'CHU00000001', 'VIS00000145', 'SES00000041'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000207', 'CHU00000001', 'VIS00000141', 'SES00000042'), -- John Smith - Main Service
('VSE00000208', 'CHU00000001', 'VIS00000142', 'SES00000042'), -- Mary Smith - Main Service
('VSE00000209', 'CHU00000001', 'VIS00000143', 'SES00000042'), -- James Smith - Elementary K-2
('VSE00000210', 'CHU00000001', 'VIS00000144', 'SES00000042'), -- Sarah Smith - Elementary K-2
('VSE00000211', 'CHU00000001', 'VIS00000145', 'SES00000042'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000212', 'CHU00000001', 'VIS00000146', 'SES00000041'), -- Robert Johnson - Main Service
('VSE00000213', 'CHU00000001', 'VIS00000147', 'SES00000041'), -- Patricia Johnson - Main Service
('VSE00000214', 'CHU00000001', 'VIS00000148', 'SES00000041'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000215', 'CHU00000001', 'VIS00000149', 'SES00000041'), -- David Johnson - Elementary 3-5
('VSE00000216', 'CHU00000001', 'VIS00000150', 'SES00000041'), -- Margaret Johnson - Senior Adults

-- Johnson Family 10:30 AM Service (Mother's Day)
('VSE00000217', 'CHU00000001', 'VIS00000146', 'SES00000042'), -- Robert Johnson - Main Service
('VSE00000218', 'CHU00000001', 'VIS00000147', 'SES00000042'), -- Patricia Johnson - Main Service
('VSE00000219', 'CHU00000001', 'VIS00000148', 'SES00000042'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000220', 'CHU00000001', 'VIS00000149', 'SES00000042'), -- David Johnson - Elementary 3-5
('VSE00000221', 'CHU00000001', 'VIS00000150', 'SES00000042'), -- Margaret Johnson - Main Service

-- Williams Family 9:00 AM Service (Mother's Day)
('VSE00000222', 'CHU00000001', 'VIS00000151', 'SES00000041'), -- Jennifer Williams - Main Service
('VSE00000223', 'CHU00000001', 'VIS00000152', 'SES00000041'), -- Christopher Williams - Middle School
('VSE00000224', 'CHU00000001', 'VIS00000153', 'SES00000041'), -- Emma Williams - Middle School

-- Williams Family 10:30 AM Service (Mother's Day)
('VSE00000225', 'CHU00000001', 'VIS00000151', 'SES00000042'), -- Jennifer Williams - Main Service
('VSE00000226', 'CHU00000001', 'VIS00000152', 'SES00000042'), -- Christopher Williams - Main Service
('VSE00000227', 'CHU00000001', 'VIS00000153', 'SES00000042'), -- Emma Williams - Main Service

-- Brown Family (Visitors) 10:30 AM Service (Mother's Day)
('VSE00000228', 'CHU00000001', 'VIS00000154', 'SES00000042'), -- Daniel Brown - Main Service
('VSE00000229', 'CHU00000001', 'VIS00000155', 'SES00000042'), -- Lisa Brown - Main Service

-- Wilson Family (Visitors) 10:30 AM Service (Mother's Day)
('VSE00000230', 'CHU00000001', 'VIS00000156', 'SES00000042'), -- Thomas Wilson - Main Service
('VSE00000231', 'CHU00000001', 'VIS00000157', 'SES00000042'), -- Susan Wilson - Main Service

-- May 18, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000232', 'CHU00000001', 'VIS00000158', 'SES00000045'), -- John Smith - Main Service
('VSE00000233', 'CHU00000001', 'VIS00000159', 'SES00000045'), -- Mary Smith - Main Service
('VSE00000234', 'CHU00000001', 'VIS00000160', 'SES00000045'), -- James Smith - Elementary K-2
('VSE00000235', 'CHU00000001', 'VIS00000161', 'SES00000045'), -- Sarah Smith - Elementary K-2
('VSE00000236', 'CHU00000001', 'VIS00000162', 'SES00000045'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000237', 'CHU00000001', 'VIS00000158', 'SES00000046'), -- John Smith - Main Service
('VSE00000238', 'CHU00000001', 'VIS00000159', 'SES00000046'), -- Mary Smith - Main Service
('VSE00000239', 'CHU00000001', 'VIS00000160', 'SES00000046'), -- James Smith - Elementary K-2
('VSE00000240', 'CHU00000001', 'VIS00000161', 'SES00000046'), -- Sarah Smith - Elementary K-2
('VSE00000241', 'CHU00000001', 'VIS00000162', 'SES00000046'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000242', 'CHU00000001', 'VIS00000163', 'SES00000045'), -- Robert Johnson - Main Service
('VSE00000243', 'CHU00000001', 'VIS00000164', 'SES00000045'), -- Patricia Johnson - Main Service
('VSE00000244', 'CHU00000001', 'VIS00000165', 'SES00000045'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000245', 'CHU00000001', 'VIS00000166', 'SES00000045'), -- David Johnson - Elementary 3-5
('VSE00000246', 'CHU00000001', 'VIS00000167', 'SES00000045'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000247', 'CHU00000001', 'VIS00000168', 'SES00000046'), -- Jennifer Williams - Main Service
('VSE00000248', 'CHU00000001', 'VIS00000169', 'SES00000046'), -- Christopher Williams - Main Service
('VSE00000249', 'CHU00000001', 'VIS00000170', 'SES00000046'), -- Emma Williams - Main Service

-- May 25, 2025 (Memorial Day Weekend - Lower Attendance)
-- Smith Family 10:30 AM Service Only
('VSE00000250', 'CHU00000001', 'VIS00000171', 'SES00000050'), -- John Smith - Main Service
('VSE00000251', 'CHU00000001', 'VIS00000172', 'SES00000050'), -- Mary Smith - Main Service
('VSE00000252', 'CHU00000001', 'VIS00000173', 'SES00000050'), -- James Smith - Elementary K-2
('VSE00000253', 'CHU00000001', 'VIS00000174', 'SES00000050'), -- Sarah Smith - Elementary K-2
('VSE00000254', 'CHU00000001', 'VIS00000175', 'SES00000050'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000255', 'CHU00000001', 'VIS00000176', 'SES00000049'), -- Robert Johnson - Main Service
('VSE00000256', 'CHU00000001', 'VIS00000177', 'SES00000049'), -- Patricia Johnson - Main Service
('VSE00000257', 'CHU00000001', 'VIS00000178', 'SES00000049'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000258', 'CHU00000001', 'VIS00000179', 'SES00000049'), -- David Johnson - Elementary 3-5
('VSE00000259', 'CHU00000001', 'VIS00000180', 'SES00000049'); -- Margaret Johnson - Senior Adults
