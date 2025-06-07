-- Demo Campus
INSERT INTO campuses (id, churchId, name) VALUES 
('CAM00000001', 'CHU00000001', 'Main Campus');

-- Demo Services
INSERT INTO services (id, churchId, campusId, name, removed) VALUES 
('SER00000001', 'CHU00000001', 'CAM00000001', 'Sunday Morning Service', 0),
('SER00000002', 'CHU00000001', 'CAM00000001', 'Sunday Evening Service', 0),
('SER00000003', 'CHU00000001', 'CAM00000001', 'Wednesday Evening Service', 0);

-- Demo Service Times
INSERT INTO serviceTimes (id, churchId, serviceId, name, time, displayOrder) VALUES 
-- Sunday Morning Service Times
('SST00000001', 'CHU00000001', 'SER00000001', '9:00 AM Service', '09:00:00', 1),
('SST00000002', 'CHU00000001', 'SER00000001', '10:30 AM Service', '10:30:00', 2),

-- Sunday Evening Service Time
('SST00000003', 'CHU00000001', 'SER00000002', '6:00 PM Service', '18:00:00', 1),

-- Wednesday Evening Service Time
('SST00000004', 'CHU00000001', 'SER00000003', '7:00 PM Service', '19:00:00', 1);

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
INSERT INTO sessions (id, churchId, serviceTimeId, sessionDate, status) VALUES
-- March 2025
-- Sunday March 2
('SES00000001', 'CHU00000001', 'SST00000001', '2025-03-02', 'Completed'), -- 9:00 AM
('SES00000002', 'CHU00000001', 'SST00000002', '2025-03-02', 'Completed'), -- 10:30 AM
('SES00000003', 'CHU00000001', 'SST00000003', '2025-03-02', 'Completed'), -- 6:00 PM
('SES00000004', 'CHU00000001', 'SST00000004', '2025-03-05', 'Completed'), -- Wednesday

-- Sunday March 9
('SES00000005', 'CHU00000001', 'SST00000001', '2025-03-09', 'Completed'),
('SES00000006', 'CHU00000001', 'SST00000002', '2025-03-09', 'Completed'),
('SES00000007', 'CHU00000001', 'SST00000003', '2025-03-09', 'Completed'),
('SES00000008', 'CHU00000001', 'SST00000004', '2025-03-12', 'Completed'),

-- Sunday March 16
('SES00000009', 'CHU00000001', 'SST00000001', '2025-03-16', 'Completed'),
('SES00000010', 'CHU00000001', 'SST00000002', '2025-03-16', 'Completed'),
('SES00000011', 'CHU00000001', 'SST00000003', '2025-03-16', 'Completed'),
('SES00000012', 'CHU00000001', 'SST00000004', '2025-03-19', 'Completed'),

-- Sunday March 23 (Palm Sunday)
('SES00000013', 'CHU00000001', 'SST00000001', '2025-03-23', 'Completed'),
('SES00000014', 'CHU00000001', 'SST00000002', '2025-03-23', 'Completed'),
('SES00000015', 'CHU00000001', 'SST00000003', '2025-03-23', 'Completed'),
('SES00000016', 'CHU00000001', 'SST00000004', '2025-03-26', 'Completed'),

-- Sunday March 30 (Easter)
('SES00000017', 'CHU00000001', 'SST00000001', '2025-03-30', 'Completed'),
('SES00000018', 'CHU00000001', 'SST00000002', '2025-03-30', 'Completed'),
('SES00000019', 'CHU00000001', 'SST00000003', '2025-03-30', 'Completed'),
('SES00000020', 'CHU00000001', 'SST00000004', '2025-04-02', 'Completed'),

-- April 2025
-- Sunday April 6
('SES00000021', 'CHU00000001', 'SST00000001', '2025-04-06', 'Completed'),
('SES00000022', 'CHU00000001', 'SST00000002', '2025-04-06', 'Completed'),
('SES00000023', 'CHU00000001', 'SST00000003', '2025-04-06', 'Completed'),
('SES00000024', 'CHU00000001', 'SST00000004', '2025-04-09', 'Completed'),

-- Sunday April 13
('SES00000025', 'CHU00000001', 'SST00000001', '2025-04-13', 'Completed'),
('SES00000026', 'CHU00000001', 'SST00000002', '2025-04-13', 'Completed'),
('SES00000027', 'CHU00000001', 'SST00000003', '2025-04-13', 'Completed'),
('SES00000028', 'CHU00000001', 'SST00000004', '2025-04-16', 'Completed'),

-- Sunday April 20
('SES00000029', 'CHU00000001', 'SST00000001', '2025-04-20', 'Completed'),
('SES00000030', 'CHU00000001', 'SST00000002', '2025-04-20', 'Completed'),
('SES00000031', 'CHU00000001', 'SST00000003', '2025-04-20', 'Completed'),
('SES00000032', 'CHU00000001', 'SST00000004', '2025-04-23', 'Completed'),

-- Sunday April 27
('SES00000033', 'CHU00000001', 'SST00000001', '2025-04-27', 'Completed'),
('SES00000034', 'CHU00000001', 'SST00000002', '2025-04-27', 'Completed'),
('SES00000035', 'CHU00000001', 'SST00000003', '2025-04-27', 'Completed'),
('SES00000036', 'CHU00000001', 'SST00000004', '2025-04-30', 'Completed'),

-- May 2025
-- Sunday May 4
('SES00000037', 'CHU00000001', 'SST00000001', '2025-05-04', 'Completed'),
('SES00000038', 'CHU00000001', 'SST00000002', '2025-05-04', 'Completed'),
('SES00000039', 'CHU00000001', 'SST00000003', '2025-05-04', 'Completed'),
('SES00000040', 'CHU00000001', 'SST00000004', '2025-05-07', 'Completed'),

-- Sunday May 11 (Mother's Day)
('SES00000041', 'CHU00000001', 'SST00000001', '2025-05-11', 'Completed'),
('SES00000042', 'CHU00000001', 'SST00000002', '2025-05-11', 'Completed'),
('SES00000043', 'CHU00000001', 'SST00000003', '2025-05-11', 'Completed'),
('SES00000044', 'CHU00000001', 'SST00000004', '2025-05-14', 'Completed'),

-- Sunday May 18
('SES00000045', 'CHU00000001', 'SST00000001', '2025-05-18', 'Completed'),
('SES00000046', 'CHU00000001', 'SST00000002', '2025-05-18', 'Completed'),
('SES00000047', 'CHU00000001', 'SST00000003', '2025-05-18', 'Completed'),
('SES00000048', 'CHU00000001', 'SST00000004', '2025-05-21', 'Completed'),

-- Sunday May 25 (Memorial Day Weekend)
('SES00000049', 'CHU00000001', 'SST00000001', '2025-05-25', 'Completed'),
('SES00000050', 'CHU00000001', 'SST00000002', '2025-05-25', 'Completed'),
('SES00000051', 'CHU00000001', 'SST00000003', '2025-05-25', 'Completed'),
('SES00000052', 'CHU00000001', 'SST00000004', '2025-05-28', 'Completed');

-- Sample Visits (March 2025)
INSERT INTO visits (id, churchId, personId, visitDate, visitStatus) VALUES
-- March 2, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000001', 'CHU00000001', 'PER00000001', '2025-03-02', 'Attended'), -- John Smith
('VIS00000002', 'CHU00000001', 'PER00000002', '2025-03-02', 'Attended'), -- Mary Smith
('VIS00000003', 'CHU00000001', 'PER00000003', '2025-03-02', 'Attended'), -- James Smith
('VIS00000004', 'CHU00000001', 'PER00000004', '2025-03-02', 'Attended'), -- Sarah Smith
('VIS00000005', 'CHU00000001', 'PER00000005', '2025-03-02', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000006', 'CHU00000001', 'PER00000006', '2025-03-02', 'Attended'), -- Robert Johnson
('VIS00000007', 'CHU00000001', 'PER00000007', '2025-03-02', 'Attended'), -- Patricia Johnson
('VIS00000008', 'CHU00000001', 'PER00000008', '2025-03-02', 'Attended'), -- Elizabeth Johnson
('VIS00000009', 'CHU00000001', 'PER00000009', '2025-03-02', 'Attended'), -- David Johnson
('VIS00000010', 'CHU00000001', 'PER00000010', '2025-03-02', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000011', 'CHU00000001', 'PER00000011', '2025-03-02', 'Attended'), -- Jennifer Williams
('VIS00000012', 'CHU00000001', 'PER00000012', '2025-03-02', 'Attended'), -- Christopher Williams
('VIS00000013', 'CHU00000001', 'PER00000013', '2025-03-02', 'Attended'), -- Emma Williams

-- Brown Family (Visitors)
('VIS00000014', 'CHU00000001', 'PER00000014', '2025-03-02', 'Visited'), -- Daniel Brown
('VIS00000015', 'CHU00000001', 'PER00000015', '2025-03-02', 'Visited'), -- Lisa Brown

-- March 9, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000016', 'CHU00000001', 'PER00000001', '2025-03-09', 'Attended'), -- John Smith
('VIS00000017', 'CHU00000001', 'PER00000002', '2025-03-09', 'Attended'), -- Mary Smith
('VIS00000018', 'CHU00000001', 'PER00000003', '2025-03-09', 'Attended'), -- James Smith
('VIS00000019', 'CHU00000001', 'PER00000004', '2025-03-09', 'Attended'), -- Sarah Smith
('VIS00000020', 'CHU00000001', 'PER00000005', '2025-03-09', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000021', 'CHU00000001', 'PER00000006', '2025-03-09', 'Attended'), -- Robert Johnson
('VIS00000022', 'CHU00000001', 'PER00000007', '2025-03-09', 'Attended'), -- Patricia Johnson
('VIS00000023', 'CHU00000001', 'PER00000008', '2025-03-09', 'Attended'), -- Elizabeth Johnson
('VIS00000024', 'CHU00000001', 'PER00000009', '2025-03-09', 'Attended'), -- David Johnson
('VIS00000025', 'CHU00000001', 'PER00000010', '2025-03-09', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000026', 'CHU00000001', 'PER00000011', '2025-03-09', 'Attended'), -- Jennifer Williams
('VIS00000027', 'CHU00000001', 'PER00000012', '2025-03-09', 'Attended'), -- Christopher Williams
('VIS00000028', 'CHU00000001', 'PER00000013', '2025-03-09', 'Attended'), -- Emma Williams

-- March 16, 2025 (Regular Sunday)
-- Smith Family (Regular attendees - both services)
('VIS00000029', 'CHU00000001', 'PER00000001', '2025-03-16', 'Attended'), -- John Smith
('VIS00000030', 'CHU00000001', 'PER00000002', '2025-03-16', 'Attended'), -- Mary Smith
('VIS00000031', 'CHU00000001', 'PER00000003', '2025-03-16', 'Attended'), -- James Smith
('VIS00000032', 'CHU00000001', 'PER00000004', '2025-03-16', 'Attended'), -- Sarah Smith
('VIS00000033', 'CHU00000001', 'PER00000005', '2025-03-16', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - 9:00 AM only)
('VIS00000034', 'CHU00000001', 'PER00000006', '2025-03-16', 'Attended'), -- Robert Johnson
('VIS00000035', 'CHU00000001', 'PER00000007', '2025-03-16', 'Attended'), -- Patricia Johnson
('VIS00000036', 'CHU00000001', 'PER00000008', '2025-03-16', 'Attended'), -- Elizabeth Johnson
('VIS00000037', 'CHU00000001', 'PER00000009', '2025-03-16', 'Attended'), -- David Johnson
('VIS00000038', 'CHU00000001', 'PER00000010', '2025-03-16', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - 10:30 AM only)
('VIS00000039', 'CHU00000001', 'PER00000011', '2025-03-16', 'Attended'), -- Jennifer Williams
('VIS00000040', 'CHU00000001', 'PER00000012', '2025-03-16', 'Attended'), -- Christopher Williams
('VIS00000041', 'CHU00000001', 'PER00000013', '2025-03-16', 'Attended'), -- Emma Williams

-- March 23, 2025 (Palm Sunday - Higher Attendance)
-- Smith Family (Regular attendees - both services)
('VIS00000042', 'CHU00000001', 'PER00000001', '2025-03-23', 'Attended'), -- John Smith
('VIS00000043', 'CHU00000001', 'PER00000002', '2025-03-23', 'Attended'), -- Mary Smith
('VIS00000044', 'CHU00000001', 'PER00000003', '2025-03-23', 'Attended'), -- James Smith
('VIS00000045', 'CHU00000001', 'PER00000004', '2025-03-23', 'Attended'), -- Sarah Smith
('VIS00000046', 'CHU00000001', 'PER00000005', '2025-03-23', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - both services for Palm Sunday)
('VIS00000047', 'CHU00000001', 'PER00000006', '2025-03-23', 'Attended'), -- Robert Johnson
('VIS00000048', 'CHU00000001', 'PER00000007', '2025-03-23', 'Attended'), -- Patricia Johnson
('VIS00000049', 'CHU00000001', 'PER00000008', '2025-03-23', 'Attended'), -- Elizabeth Johnson
('VIS00000050', 'CHU00000001', 'PER00000009', '2025-03-23', 'Attended'), -- David Johnson
('VIS00000051', 'CHU00000001', 'PER00000010', '2025-03-23', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - both services for Palm Sunday)
('VIS00000052', 'CHU00000001', 'PER00000011', '2025-03-23', 'Attended'), -- Jennifer Williams
('VIS00000053', 'CHU00000001', 'PER00000012', '2025-03-23', 'Attended'), -- Christopher Williams
('VIS00000054', 'CHU00000001', 'PER00000013', '2025-03-23', 'Attended'), -- Emma Williams

-- Additional Visitors for Palm Sunday
('VIS00000055', 'CHU00000001', 'PER00000014', '2025-03-23', 'Visited'), -- Daniel Brown
('VIS00000056', 'CHU00000001', 'PER00000015', '2025-03-23', 'Visited'), -- Lisa Brown
('VIS00000057', 'CHU00000001', 'PER00000016', '2025-03-23', 'Visited'), -- Thomas Wilson
('VIS00000058', 'CHU00000001', 'PER00000017', '2025-03-23', 'Visited'), -- Susan Wilson

-- March 30, 2025 (Easter Sunday - Highest Attendance)
-- Smith Family (Regular attendees - both services)
('VIS00000059', 'CHU00000001', 'PER00000001', '2025-03-30', 'Attended'), -- John Smith
('VIS00000060', 'CHU00000001', 'PER00000002', '2025-03-30', 'Attended'), -- Mary Smith
('VIS00000061', 'CHU00000001', 'PER00000003', '2025-03-30', 'Attended'), -- James Smith
('VIS00000062', 'CHU00000001', 'PER00000004', '2025-03-30', 'Attended'), -- Sarah Smith
('VIS00000063', 'CHU00000001', 'PER00000005', '2025-03-30', 'Attended'), -- Michael Smith

-- Johnson Family (Regular attendees - both services for Easter)
('VIS00000064', 'CHU00000001', 'PER00000006', '2025-03-30', 'Attended'), -- Robert Johnson
('VIS00000065', 'CHU00000001', 'PER00000007', '2025-03-30', 'Attended'), -- Patricia Johnson
('VIS00000066', 'CHU00000001', 'PER00000008', '2025-03-30', 'Attended'), -- Elizabeth Johnson
('VIS00000067', 'CHU00000001', 'PER00000009', '2025-03-30', 'Attended'), -- David Johnson
('VIS00000068', 'CHU00000001', 'PER00000010', '2025-03-30', 'Attended'), -- Margaret Johnson

-- Williams Family (Regular attendees - both services for Easter)
('VIS00000069', 'CHU00000001', 'PER00000011', '2025-03-30', 'Attended'), -- Jennifer Williams
('VIS00000070', 'CHU00000001', 'PER00000012', '2025-03-30', 'Attended'), -- Christopher Williams
('VIS00000071', 'CHU00000001', 'PER00000013', '2025-03-30', 'Attended'), -- Emma Williams

-- Additional Visitors for Easter
('VIS00000072', 'CHU00000001', 'PER00000014', '2025-03-30', 'Visited'), -- Daniel Brown
('VIS00000073', 'CHU00000001', 'PER00000015', '2025-03-30', 'Visited'), -- Lisa Brown
('VIS00000074', 'CHU00000001', 'PER00000016', '2025-03-30', 'Visited'), -- Thomas Wilson
('VIS00000075', 'CHU00000001', 'PER00000017', '2025-03-30', 'Visited'), -- Susan Wilson
('VIS00000076', 'CHU00000001', 'PER00000018', '2025-03-30', 'Visited'), -- Richard Davis
('VIS00000077', 'CHU00000001', 'PER00000019', '2025-03-30', 'Visited'), -- Nancy Davis
('VIS00000078', 'CHU00000001', 'PER00000020', '2025-03-30', 'Visited'); -- Robert Davis

-- Sample VisitSessions (March 2025)
INSERT INTO visitSessions (id, churchId, visitId, sessionId, groupId, status) VALUES
-- March 2, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000001', 'CHU00000001', 'VIS00000001', 'SES00000001', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000002', 'CHU00000001', 'VIS00000002', 'SES00000001', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000003', 'CHU00000001', 'VIS00000003', 'SES00000001', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000004', 'CHU00000001', 'VIS00000004', 'SES00000001', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000005', 'CHU00000001', 'VIS00000005', 'SES00000001', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000006', 'CHU00000001', 'VIS00000001', 'SES00000002', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000007', 'CHU00000001', 'VIS00000002', 'SES00000002', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000008', 'CHU00000001', 'VIS00000003', 'SES00000002', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000009', 'CHU00000001', 'VIS00000004', 'SES00000002', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000010', 'CHU00000001', 'VIS00000005', 'SES00000002', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000011', 'CHU00000001', 'VIS00000006', 'SES00000001', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000012', 'CHU00000001', 'VIS00000007', 'SES00000001', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000013', 'CHU00000001', 'VIS00000008', 'SES00000001', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000014', 'CHU00000001', 'VIS00000009', 'SES00000001', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000015', 'CHU00000001', 'VIS00000010', 'SES00000001', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000016', 'CHU00000001', 'VIS00000011', 'SES00000002', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000017', 'CHU00000001', 'VIS00000012', 'SES00000002', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000018', 'CHU00000001', 'VIS00000013', 'SES00000002', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- Brown Family (Visitors) 10:30 AM Service
('VSE00000019', 'CHU00000001', 'VIS00000014', 'SES00000002', 'GRP00000001', 'Present'), -- Daniel Brown - Main Service
('VSE00000020', 'CHU00000001', 'VIS00000015', 'SES00000002', 'GRP00000001', 'Present'), -- Lisa Brown - Main Service

-- March 9, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000021', 'CHU00000001', 'VIS00000016', 'SES00000005', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000022', 'CHU00000001', 'VIS00000017', 'SES00000005', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000023', 'CHU00000001', 'VIS00000018', 'SES00000005', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000024', 'CHU00000001', 'VIS00000019', 'SES00000005', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000025', 'CHU00000001', 'VIS00000020', 'SES00000005', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000026', 'CHU00000001', 'VIS00000016', 'SES00000006', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000027', 'CHU00000001', 'VIS00000017', 'SES00000006', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000028', 'CHU00000001', 'VIS00000018', 'SES00000006', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000029', 'CHU00000001', 'VIS00000019', 'SES00000006', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000030', 'CHU00000001', 'VIS00000020', 'SES00000006', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000031', 'CHU00000001', 'VIS00000021', 'SES00000005', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000032', 'CHU00000001', 'VIS00000022', 'SES00000005', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000033', 'CHU00000001', 'VIS00000023', 'SES00000005', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000034', 'CHU00000001', 'VIS00000024', 'SES00000005', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000035', 'CHU00000001', 'VIS00000025', 'SES00000005', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000036', 'CHU00000001', 'VIS00000026', 'SES00000006', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000037', 'CHU00000001', 'VIS00000027', 'SES00000006', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000038', 'CHU00000001', 'VIS00000028', 'SES00000006', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- March 16, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000039', 'CHU00000001', 'VIS00000029', 'SES00000009', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000040', 'CHU00000001', 'VIS00000030', 'SES00000009', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000041', 'CHU00000001', 'VIS00000031', 'SES00000009', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000042', 'CHU00000001', 'VIS00000032', 'SES00000009', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000043', 'CHU00000001', 'VIS00000033', 'SES00000009', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000044', 'CHU00000001', 'VIS00000029', 'SES00000010', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000045', 'CHU00000001', 'VIS00000030', 'SES00000010', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000046', 'CHU00000001', 'VIS00000031', 'SES00000010', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000047', 'CHU00000001', 'VIS00000032', 'SES00000010', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000048', 'CHU00000001', 'VIS00000033', 'SES00000010', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000049', 'CHU00000001', 'VIS00000034', 'SES00000009', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000050', 'CHU00000001', 'VIS00000035', 'SES00000009', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000051', 'CHU00000001', 'VIS00000036', 'SES00000009', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000052', 'CHU00000001', 'VIS00000037', 'SES00000009', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000053', 'CHU00000001', 'VIS00000038', 'SES00000009', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000054', 'CHU00000001', 'VIS00000039', 'SES00000010', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000055', 'CHU00000001', 'VIS00000040', 'SES00000010', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000056', 'CHU00000001', 'VIS00000041', 'SES00000010', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- March 23, 2025 (Palm Sunday - Higher Attendance)
-- Smith Family 9:00 AM Service
('VSE00000057', 'CHU00000001', 'VIS00000042', 'SES00000013', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000058', 'CHU00000001', 'VIS00000043', 'SES00000013', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000059', 'CHU00000001', 'VIS00000044', 'SES00000013', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000060', 'CHU00000001', 'VIS00000045', 'SES00000013', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000061', 'CHU00000001', 'VIS00000046', 'SES00000013', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000062', 'CHU00000001', 'VIS00000042', 'SES00000014', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000063', 'CHU00000001', 'VIS00000043', 'SES00000014', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000064', 'CHU00000001', 'VIS00000044', 'SES00000014', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000065', 'CHU00000001', 'VIS00000045', 'SES00000014', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000066', 'CHU00000001', 'VIS00000046', 'SES00000014', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000067', 'CHU00000001', 'VIS00000047', 'SES00000013', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000068', 'CHU00000001', 'VIS00000048', 'SES00000013', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000069', 'CHU00000001', 'VIS00000049', 'SES00000013', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000070', 'CHU00000001', 'VIS00000050', 'SES00000013', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000071', 'CHU00000001', 'VIS00000051', 'SES00000013', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Johnson Family 10:30 AM Service (Palm Sunday)
('VSE00000072', 'CHU00000001', 'VIS00000047', 'SES00000014', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000073', 'CHU00000001', 'VIS00000048', 'SES00000014', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000074', 'CHU00000001', 'VIS00000049', 'SES00000014', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000075', 'CHU00000001', 'VIS00000050', 'SES00000014', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000076', 'CHU00000001', 'VIS00000051', 'SES00000014', 'GRP00000001', 'Present'), -- Margaret Johnson - Main Service

-- Williams Family 9:00 AM Service (Palm Sunday)
('VSE00000077', 'CHU00000001', 'VIS00000052', 'SES00000013', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000078', 'CHU00000001', 'VIS00000053', 'SES00000013', 'GRP00000011', 'Present'), -- Christopher Williams - Middle School
('VSE00000079', 'CHU00000001', 'VIS00000054', 'SES00000013', 'GRP00000011', 'Present'), -- Emma Williams - Middle School

-- Williams Family 10:30 AM Service (Palm Sunday)
('VSE00000080', 'CHU00000001', 'VIS00000052', 'SES00000014', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000081', 'CHU00000001', 'VIS00000053', 'SES00000014', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000082', 'CHU00000001', 'VIS00000054', 'SES00000014', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- Brown Family (Visitors) 10:30 AM Service (Palm Sunday)
('VSE00000083', 'CHU00000001', 'VIS00000055', 'SES00000014', 'GRP00000001', 'Present'), -- Daniel Brown - Main Service
('VSE00000084', 'CHU00000001', 'VIS00000056', 'SES00000014', 'GRP00000001', 'Present'), -- Lisa Brown - Main Service

-- Wilson Family (Visitors) 10:30 AM Service (Palm Sunday)
('VSE00000085', 'CHU00000001', 'VIS00000057', 'SES00000014', 'GRP00000001', 'Present'), -- Thomas Wilson - Main Service
('VSE00000086', 'CHU00000001', 'VIS00000058', 'SES00000014', 'GRP00000001', 'Present'), -- Susan Wilson - Main Service

-- March 30, 2025 (Easter Sunday - Highest Attendance)
-- Smith Family 9:00 AM Service
('VSE00000087', 'CHU00000001', 'VIS00000059', 'SES00000017', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000088', 'CHU00000001', 'VIS00000060', 'SES00000017', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000089', 'CHU00000001', 'VIS00000061', 'SES00000017', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000090', 'CHU00000001', 'VIS00000062', 'SES00000017', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000091', 'CHU00000001', 'VIS00000063', 'SES00000017', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000092', 'CHU00000001', 'VIS00000059', 'SES00000018', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000093', 'CHU00000001', 'VIS00000060', 'SES00000018', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000094', 'CHU00000001', 'VIS00000061', 'SES00000018', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000095', 'CHU00000001', 'VIS00000062', 'SES00000018', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000096', 'CHU00000001', 'VIS00000063', 'SES00000018', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000097', 'CHU00000001', 'VIS00000064', 'SES00000017', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000098', 'CHU00000001', 'VIS00000065', 'SES00000017', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000099', 'CHU00000001', 'VIS00000066', 'SES00000017', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000100', 'CHU00000001', 'VIS00000067', 'SES00000017', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000101', 'CHU00000001', 'VIS00000068', 'SES00000017', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Johnson Family 10:30 AM Service (Easter)
('VSE00000102', 'CHU00000001', 'VIS00000064', 'SES00000018', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000103', 'CHU00000001', 'VIS00000065', 'SES00000018', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000104', 'CHU00000001', 'VIS00000066', 'SES00000018', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000105', 'CHU00000001', 'VIS00000067', 'SES00000018', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000106', 'CHU00000001', 'VIS00000068', 'SES00000018', 'GRP00000001', 'Present'), -- Margaret Johnson - Main Service

-- Williams Family 9:00 AM Service (Easter)
('VSE00000107', 'CHU00000001', 'VIS00000069', 'SES00000017', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000108', 'CHU00000001', 'VIS00000070', 'SES00000017', 'GRP00000011', 'Present'), -- Christopher Williams - Middle School
('VSE00000109', 'CHU00000001', 'VIS00000071', 'SES00000017', 'GRP00000011', 'Present'), -- Emma Williams - Middle School

-- Williams Family 10:30 AM Service (Easter)
('VSE00000110', 'CHU00000001', 'VIS00000069', 'SES00000018', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000111', 'CHU00000001', 'VIS00000070', 'SES00000018', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000112', 'CHU00000001', 'VIS00000071', 'SES00000018', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- Brown Family (Visitors) 10:30 AM Service (Easter)
('VSE00000113', 'CHU00000001', 'VIS00000072', 'SES00000018', 'GRP00000001', 'Present'), -- Daniel Brown - Main Service
('VSE00000114', 'CHU00000001', 'VIS00000073', 'SES00000018', 'GRP00000001', 'Present'), -- Lisa Brown - Main Service

-- Wilson Family (Visitors) 10:30 AM Service (Easter)
('VSE00000115', 'CHU00000001', 'VIS00000074', 'SES00000018', 'GRP00000001', 'Present'), -- Thomas Wilson - Main Service
('VSE00000116', 'CHU00000001', 'VIS00000075', 'SES00000018', 'GRP00000001', 'Present'), -- Susan Wilson - Main Service

-- Davis Family (Visitors) 10:30 AM Service (Easter)
('VSE00000117', 'CHU00000001', 'VIS00000076', 'SES00000018', 'GRP00000001', 'Present'), -- Richard Davis - Main Service
('VSE00000118', 'CHU00000001', 'VIS00000077', 'SES00000018', 'GRP00000001', 'Present'), -- Nancy Davis - Main Service
('VSE00000119', 'CHU00000001', 'VIS00000078', 'SES00000018', 'GRP00000009', 'Present'); -- Robert Davis - Elementary K-2

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
INSERT INTO visitSessions (id, churchId, visitId, sessionId, groupId, status) VALUES
-- April 6, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000120', 'CHU00000001', 'VIS00000079', 'SES00000021', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000121', 'CHU00000001', 'VIS00000080', 'SES00000021', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000122', 'CHU00000001', 'VIS00000081', 'SES00000021', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000123', 'CHU00000001', 'VIS00000082', 'SES00000021', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000124', 'CHU00000001', 'VIS00000083', 'SES00000021', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000125', 'CHU00000001', 'VIS00000079', 'SES00000022', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000126', 'CHU00000001', 'VIS00000080', 'SES00000022', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000127', 'CHU00000001', 'VIS00000081', 'SES00000022', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000128', 'CHU00000001', 'VIS00000082', 'SES00000022', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000129', 'CHU00000001', 'VIS00000083', 'SES00000022', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000130', 'CHU00000001', 'VIS00000084', 'SES00000021', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000131', 'CHU00000001', 'VIS00000085', 'SES00000021', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000132', 'CHU00000001', 'VIS00000086', 'SES00000021', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000133', 'CHU00000001', 'VIS00000087', 'SES00000021', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000134', 'CHU00000001', 'VIS00000088', 'SES00000021', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000135', 'CHU00000001', 'VIS00000089', 'SES00000022', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000136', 'CHU00000001', 'VIS00000090', 'SES00000022', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000137', 'CHU00000001', 'VIS00000091', 'SES00000022', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- April 13, 2025 (Spring Break - Lower Attendance)
-- Smith Family 10:30 AM Service Only
('VSE00000138', 'CHU00000001', 'VIS00000092', 'SES00000026', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000139', 'CHU00000001', 'VIS00000093', 'SES00000026', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000140', 'CHU00000001', 'VIS00000094', 'SES00000026', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000141', 'CHU00000001', 'VIS00000095', 'SES00000026', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000142', 'CHU00000001', 'VIS00000096', 'SES00000026', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000143', 'CHU00000001', 'VIS00000097', 'SES00000025', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000144', 'CHU00000001', 'VIS00000098', 'SES00000025', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000145', 'CHU00000001', 'VIS00000099', 'SES00000025', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000146', 'CHU00000001', 'VIS00000100', 'SES00000025', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000147', 'CHU00000001', 'VIS00000101', 'SES00000025', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- April 20, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000148', 'CHU00000001', 'VIS00000102', 'SES00000029', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000149', 'CHU00000001', 'VIS00000103', 'SES00000029', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000150', 'CHU00000001', 'VIS00000104', 'SES00000029', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000151', 'CHU00000001', 'VIS00000105', 'SES00000029', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000152', 'CHU00000001', 'VIS00000106', 'SES00000029', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000153', 'CHU00000001', 'VIS00000102', 'SES00000030', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000154', 'CHU00000001', 'VIS00000103', 'SES00000030', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000155', 'CHU00000001', 'VIS00000104', 'SES00000030', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000156', 'CHU00000001', 'VIS00000105', 'SES00000030', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000157', 'CHU00000001', 'VIS00000106', 'SES00000030', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000158', 'CHU00000001', 'VIS00000107', 'SES00000029', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000159', 'CHU00000001', 'VIS00000108', 'SES00000029', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000160', 'CHU00000001', 'VIS00000109', 'SES00000029', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000161', 'CHU00000001', 'VIS00000110', 'SES00000029', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000162', 'CHU00000001', 'VIS00000111', 'SES00000029', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000163', 'CHU00000001', 'VIS00000112', 'SES00000030', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000164', 'CHU00000001', 'VIS00000113', 'SES00000030', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000165', 'CHU00000001', 'VIS00000114', 'SES00000030', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- April 27, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000166', 'CHU00000001', 'VIS00000115', 'SES00000033', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000167', 'CHU00000001', 'VIS00000116', 'SES00000033', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000168', 'CHU00000001', 'VIS00000117', 'SES00000033', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000169', 'CHU00000001', 'VIS00000118', 'SES00000033', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000170', 'CHU00000001', 'VIS00000119', 'SES00000033', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000171', 'CHU00000001', 'VIS00000115', 'SES00000034', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000172', 'CHU00000001', 'VIS00000116', 'SES00000034', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000173', 'CHU00000001', 'VIS00000117', 'SES00000034', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000174', 'CHU00000001', 'VIS00000118', 'SES00000034', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000175', 'CHU00000001', 'VIS00000119', 'SES00000034', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000176', 'CHU00000001', 'VIS00000120', 'SES00000033', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000177', 'CHU00000001', 'VIS00000121', 'SES00000033', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000178', 'CHU00000001', 'VIS00000122', 'SES00000033', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000179', 'CHU00000001', 'VIS00000123', 'SES00000033', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000180', 'CHU00000001', 'VIS00000124', 'SES00000033', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000181', 'CHU00000001', 'VIS00000125', 'SES00000034', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000182', 'CHU00000001', 'VIS00000126', 'SES00000034', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000183', 'CHU00000001', 'VIS00000127', 'SES00000034', 'GRP00000001', 'Present'); -- Emma Williams - Main Service

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
INSERT INTO visitSessions (id, churchId, visitId, sessionId, groupId, status) VALUES
-- May 4, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000184', 'CHU00000001', 'VIS00000128', 'SES00000037', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000185', 'CHU00000001', 'VIS00000129', 'SES00000037', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000186', 'CHU00000001', 'VIS00000130', 'SES00000037', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000187', 'CHU00000001', 'VIS00000131', 'SES00000037', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000188', 'CHU00000001', 'VIS00000132', 'SES00000037', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000189', 'CHU00000001', 'VIS00000128', 'SES00000038', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000190', 'CHU00000001', 'VIS00000129', 'SES00000038', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000191', 'CHU00000001', 'VIS00000130', 'SES00000038', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000192', 'CHU00000001', 'VIS00000131', 'SES00000038', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000193', 'CHU00000001', 'VIS00000132', 'SES00000038', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000194', 'CHU00000001', 'VIS00000133', 'SES00000037', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000195', 'CHU00000001', 'VIS00000134', 'SES00000037', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000196', 'CHU00000001', 'VIS00000135', 'SES00000037', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000197', 'CHU00000001', 'VIS00000136', 'SES00000037', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000198', 'CHU00000001', 'VIS00000137', 'SES00000037', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000199', 'CHU00000001', 'VIS00000138', 'SES00000038', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000200', 'CHU00000001', 'VIS00000139', 'SES00000038', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000201', 'CHU00000001', 'VIS00000140', 'SES00000038', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- May 11, 2025 (Mother's Day - Higher Attendance)
-- Smith Family 9:00 AM Service
('VSE00000202', 'CHU00000001', 'VIS00000141', 'SES00000041', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000203', 'CHU00000001', 'VIS00000142', 'SES00000041', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000204', 'CHU00000001', 'VIS00000143', 'SES00000041', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000205', 'CHU00000001', 'VIS00000144', 'SES00000041', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000206', 'CHU00000001', 'VIS00000145', 'SES00000041', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000207', 'CHU00000001', 'VIS00000141', 'SES00000042', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000208', 'CHU00000001', 'VIS00000142', 'SES00000042', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000209', 'CHU00000001', 'VIS00000143', 'SES00000042', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000210', 'CHU00000001', 'VIS00000144', 'SES00000042', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000211', 'CHU00000001', 'VIS00000145', 'SES00000042', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000212', 'CHU00000001', 'VIS00000146', 'SES00000041', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000213', 'CHU00000001', 'VIS00000147', 'SES00000041', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000214', 'CHU00000001', 'VIS00000148', 'SES00000041', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000215', 'CHU00000001', 'VIS00000149', 'SES00000041', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000216', 'CHU00000001', 'VIS00000150', 'SES00000041', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Johnson Family 10:30 AM Service (Mother's Day)
('VSE00000217', 'CHU00000001', 'VIS00000146', 'SES00000042', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000218', 'CHU00000001', 'VIS00000147', 'SES00000042', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000219', 'CHU00000001', 'VIS00000148', 'SES00000042', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000220', 'CHU00000001', 'VIS00000149', 'SES00000042', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000221', 'CHU00000001', 'VIS00000150', 'SES00000042', 'GRP00000001', 'Present'), -- Margaret Johnson - Main Service

-- Williams Family 9:00 AM Service (Mother's Day)
('VSE00000222', 'CHU00000001', 'VIS00000151', 'SES00000041', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000223', 'CHU00000001', 'VIS00000152', 'SES00000041', 'GRP00000011', 'Present'), -- Christopher Williams - Middle School
('VSE00000224', 'CHU00000001', 'VIS00000153', 'SES00000041', 'GRP00000011', 'Present'), -- Emma Williams - Middle School

-- Williams Family 10:30 AM Service (Mother's Day)
('VSE00000225', 'CHU00000001', 'VIS00000151', 'SES00000042', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000226', 'CHU00000001', 'VIS00000152', 'SES00000042', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000227', 'CHU00000001', 'VIS00000153', 'SES00000042', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- Brown Family (Visitors) 10:30 AM Service (Mother's Day)
('VSE00000228', 'CHU00000001', 'VIS00000154', 'SES00000042', 'GRP00000001', 'Present'), -- Daniel Brown - Main Service
('VSE00000229', 'CHU00000001', 'VIS00000155', 'SES00000042', 'GRP00000001', 'Present'), -- Lisa Brown - Main Service

-- Wilson Family (Visitors) 10:30 AM Service (Mother's Day)
('VSE00000230', 'CHU00000001', 'VIS00000156', 'SES00000042', 'GRP00000001', 'Present'), -- Thomas Wilson - Main Service
('VSE00000231', 'CHU00000001', 'VIS00000157', 'SES00000042', 'GRP00000001', 'Present'), -- Susan Wilson - Main Service

-- May 18, 2025 (Regular Sunday)
-- Smith Family 9:00 AM Service
('VSE00000232', 'CHU00000001', 'VIS00000158', 'SES00000045', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000233', 'CHU00000001', 'VIS00000159', 'SES00000045', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000234', 'CHU00000001', 'VIS00000160', 'SES00000045', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000235', 'CHU00000001', 'VIS00000161', 'SES00000045', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000236', 'CHU00000001', 'VIS00000162', 'SES00000045', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Smith Family 10:30 AM Service
('VSE00000237', 'CHU00000001', 'VIS00000158', 'SES00000046', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000238', 'CHU00000001', 'VIS00000159', 'SES00000046', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000239', 'CHU00000001', 'VIS00000160', 'SES00000046', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000240', 'CHU00000001', 'VIS00000161', 'SES00000046', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000241', 'CHU00000001', 'VIS00000162', 'SES00000046', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000242', 'CHU00000001', 'VIS00000163', 'SES00000045', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000243', 'CHU00000001', 'VIS00000164', 'SES00000045', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000244', 'CHU00000001', 'VIS00000165', 'SES00000045', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000245', 'CHU00000001', 'VIS00000166', 'SES00000045', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000246', 'CHU00000001', 'VIS00000167', 'SES00000045', 'GRP00000006', 'Present'), -- Margaret Johnson - Senior Adults

-- Williams Family 10:30 AM Service
('VSE00000247', 'CHU00000001', 'VIS00000168', 'SES00000046', 'GRP00000001', 'Present'), -- Jennifer Williams - Main Service
('VSE00000248', 'CHU00000001', 'VIS00000169', 'SES00000046', 'GRP00000001', 'Present'), -- Christopher Williams - Main Service
('VSE00000249', 'CHU00000001', 'VIS00000170', 'SES00000046', 'GRP00000001', 'Present'), -- Emma Williams - Main Service

-- May 25, 2025 (Memorial Day Weekend - Lower Attendance)
-- Smith Family 10:30 AM Service Only
('VSE00000250', 'CHU00000001', 'VIS00000171', 'SES00000050', 'GRP00000001', 'Present'), -- John Smith - Main Service
('VSE00000251', 'CHU00000001', 'VIS00000172', 'SES00000050', 'GRP00000001', 'Present'), -- Mary Smith - Main Service
('VSE00000252', 'CHU00000001', 'VIS00000173', 'SES00000050', 'GRP00000009', 'Present'), -- James Smith - Elementary K-2
('VSE00000253', 'CHU00000001', 'VIS00000174', 'SES00000050', 'GRP00000009', 'Present'), -- Sarah Smith - Elementary K-2
('VSE00000254', 'CHU00000001', 'VIS00000175', 'SES00000050', 'GRP00000007', 'Present'), -- Michael Smith - Nursery

-- Johnson Family 9:00 AM Service
('VSE00000255', 'CHU00000001', 'VIS00000176', 'SES00000049', 'GRP00000001', 'Present'), -- Robert Johnson - Main Service
('VSE00000256', 'CHU00000001', 'VIS00000177', 'SES00000049', 'GRP00000001', 'Present'), -- Patricia Johnson - Main Service
('VSE00000257', 'CHU00000001', 'VIS00000178', 'SES00000049', 'GRP00000010', 'Present'), -- Elizabeth Johnson - Elementary 3-5
('VSE00000258', 'CHU00000001', 'VIS00000179', 'SES00000049', 'GRP00000010', 'Present'), -- David Johnson - Elementary 3-5
('VSE00000259', 'CHU00000001', 'VIS00000180', 'SES00000049', 'GRP00000006', 'Present'); -- Margaret Johnson - Senior Adults
