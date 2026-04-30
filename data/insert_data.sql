INSERT INTO PolicyTypes (PolicyTypeName)
VALUES
('Auto'),
('Health'),
('Home'),
('Travel'),
('Life');

INSERT INTO Customers (FirstName, LastName, Email, Phone, DateOfBirth)
VALUES
('John', 'Smith', 'john.smith@email.com', '1234567890', '1985-04-12'),
('Emma', 'Johnson', 'emma.johnson@email.com', '2345678901', '1990-08-25'),
('Michael', 'Brown', 'michael.brown@email.com', '3456789012', '1978-01-19'),
('Sophia', 'Davis', 'sophia.davis@email.com', '4567890123', '1995-11-03'),
('Liam', 'Wilson', 'liam.wilson@email.com', '5678901234', '1988-06-14');

INSERT INTO Policies 
(CustomerID, PolicyTypeID, PolicyNumber, StartDate, EndDate, PremiumAmount, Status)
VALUES
(1, 1, 'AUTO-1001', '2024-01-01', '2024-12-31', 1200.00, 'Active'),
(1, 5, 'LIFE-1002', '2024-02-01', '2034-01-31', 3000.00, 'Active'),

(2, 2, 'HEALTH-2001', '2024-03-01', '2025-02-28', 2500.00, 'Active'),

(3, 3, 'HOME-3001', '2023-06-01', '2024-05-31', 1800.00, 'Expired'),
(3, 1, 'AUTO-3002', '2024-04-01', '2025-03-31', 1100.00, 'Active'),

(4, 4, 'TRAVEL-4001', '2024-05-01', '2024-10-01', 600.00, 'Expired'),

(5, 2, 'HEALTH-5001', '2024-01-15', '2025-01-14', 2700.00, 'Active'),
(5, 3, 'HOME-5002', '2024-02-01', '2025-01-31', 1900.00, 'Active');

INSERT INTO Claims
(PolicyID, ClaimDate, ClaimAmount, ClaimStatus, ClaimDescription)
VALUES
(1, '2024-02-10', 1500.00, 'Approved', 'Car accident repair'),
(1, '2024-03-15', 700.00, 'Pending', 'Windshield damage'),

(2, '2024-06-01', 10000.00, 'Pending', 'Life policy review'),

(3, '2024-04-05', 3200.00, 'Approved', 'Hospital treatment'),

(4, '2024-04-18', 5000.00, 'Rejected', 'Roof damage'),

(5, '2024-05-20', 1200.00, 'Approved', 'Minor accident'),

(6, '2024-06-10', 900.00, 'Approved', 'Lost luggage'),

(7, '2024-03-25', 2100.00, 'Pending', 'Medical check'),
  
(8, '2024-07-01', 4000.00, 'Approved', 'Water leakage');
