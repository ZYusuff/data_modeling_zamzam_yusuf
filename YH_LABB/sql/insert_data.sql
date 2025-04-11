-- Insert data into Program table
INSERT INTO Program (Name, Description) VALUES
('Data Engineering', 'This program focuses on data engineering skills including database design and ETL processes.'),
('Software Development', 'A comprehensive program that covers software development using modern programming languages.');

-- Insert data into Class table
INSERT INTO Class (ProgramID, CohortYear) VALUES
(1, 2023),
(2, 2023);

-- Insert data into Student table
INSERT INTO Student (FirstName, LastName, PersonalNumber, Email, ProgramID, ClassID) VALUES
('John', 'Doe', '123456789', 'john.doe@example.com', 1, 1),
('Jane', 'Smith', '987654321', 'jane.smith@example.com', 2, 2);

-- Insert data into Instructor table
INSERT INTO Instructor (FirstName, LastName, Email, Type) VALUES
('Alice', 'Johnson', 'alice.johnson@example.com', 'Permanent'),
('Bob', 'Williams', 'bob.williams@example.com', 'Consultant');

-- Insert data into Consultant table
INSERT INTO Consultant (ConsultantID, CompanyName, OrgNumber, HasFtax, HourlyRate) VALUES
(2, 'Tech Solutions', '123456789', true, 150.00);

-- Insert data into ProgramCoordinator table
INSERT INTO ProgramCoordinator (FirstName, LastName, Email) VALUES
('Sarah', 'Brown', 'sarah.brown@example.com');

-- Insert data into Class-ProgramCoordinator relationship table
INSERT INTO Coordinator_Class (CoordinatorID, ClassID) VALUES
(1, 1),
(1, 2);

-- Insert data into Location table
INSERT INTO Location (City, Address) VALUES
('Stockholm', '123 Main Street'),
('Gothenburg', '456 Secondary Street');

-- Insert data into Student_Location table
INSERT INTO Student_Location (StudentID, LocationID) VALUES
(1, 1),
(2, 2);
