-- Table: Program
CREATE TABLE Program (
    ProgramID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    Description TEXT
);

-- Table: Class
CREATE TABLE Class (
    ClassID SERIAL PRIMARY KEY,
    ProgramID INT REFERENCES Program(ProgramID),
    CohortYear INT
);

-- Table: Student
CREATE TABLE Student (
    StudentID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    PersonalNumber VARCHAR(255),
    Email VARCHAR(255),
    ProgramID INT REFERENCES Program(ProgramID),
    ClassID INT REFERENCES Class(ClassID)
);

-- Table: Course
CREATE TABLE Course (
    CourseID SERIAL PRIMARY KEY,
    Name VARCHAR(255),
    CourseCode VARCHAR(255),
    Credits INT,
    Description TEXT,
    ProgramID INT REFERENCES Program(ProgramID)
);

-- Table: Instructor
CREATE TABLE Instructor (
    InstructorID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255),
    Type VARCHAR(50) -- Consultant or Permanent
);

-- Table: Consultant
CREATE TABLE Consultant (
    ConsultantID INT PRIMARY KEY REFERENCES Instructor(InstructorID),
    CompanyName VARCHAR(255),
    OrgNumber VARCHAR(255),
    HasFtax BOOLEAN,
    HourlyRate DECIMAL
);

-- Table: ProgramCoordinator
CREATE TABLE ProgramCoordinator (
    CoordinatorID SERIAL PRIMARY KEY,
    FirstName VARCHAR(255),
    LastName VARCHAR(255),
    Email VARCHAR(255)
);

-- Table: Coordinator_Class
CREATE TABLE Coordinator_Class (
    CoordinatorID INT REFERENCES ProgramCoordinator(CoordinatorID),
    ClassID INT REFERENCES Class(ClassID),
    PRIMARY KEY (CoordinatorID, ClassID)
);

-- Table: Location
CREATE TABLE Location (
    LocationID SERIAL PRIMARY KEY,
    City VARCHAR(255),
    Address TEXT
);

-- Table: Student_Location
CREATE TABLE Student_Location (
    StudentID INT REFERENCES Student(StudentID),
    LocationID INT REFERENCES Location(LocationID),
    PRIMARY KEY (StudentID, LocationID)
);

-- Table: Instructor_Course
CREATE TABLE Instructor_Course (
    InstructorID INT REFERENCES Instructor(InstructorID),
    CourseID INT REFERENCES Course(CourseID),
    PRIMARY KEY (InstructorID, CourseID)
);
