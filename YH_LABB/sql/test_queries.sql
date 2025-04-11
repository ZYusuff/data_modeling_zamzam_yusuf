-- Hämta alla studenter i ett program
SELECT * FROM Student WHERE ProgramID = 1;

-- Hämta alla kurser i ett program
SELECT * FROM Course WHERE ProgramID = 1;

-- Hämta alla instruktörer som undervisar en viss kurs
SELECT * FROM Instructor 
WHERE InstructorID IN (SELECT InstructorID FROM Instructor_Course WHERE CourseID = 1);

-- Hämta alla studenter i en viss klass
SELECT * FROM Student WHERE ClassID = 1;

-- Hämta alla klasser för ett visst program
SELECT * FROM Class WHERE ProgramID = 1;

-- Hämta alla program som en student är inskriven i
SELECT * FROM Program WHERE ProgramID IN (SELECT ProgramID FROM Student WHERE StudentID = 1);

-- Hämta alla platser där en student är registrerad
SELECT * FROM Location WHERE LocationID IN (SELECT LocationID FROM Student_Location WHERE StudentID = 1);

-- Hämta programkoordinatorn för en viss klass
SELECT * FROM ProgramCoordinator 
WHERE CoordinatorID IN (SELECT CoordinatorID FROM Coordinator_Class WHERE ClassID = 1);

-- Hämta information om utbildningsledaren (ProgramCoordinator)r och vilken klass och program den är associerad med
SELECT 
    c.CohortYear,
    p.Name AS ProgramName,
    pc.FirstName AS CoordinatorFirstName,
    pc.LastName AS CoordinatorLastName
FROM 
    Class c
JOIN 
    Program p ON c.ProgramID = p.ProgramID
JOIN 
    Coordinator_Class cc ON c.ClassID = cc.ClassID
JOIN 
    ProgramCoordinator pc ON cc.CoordinatorID = pc.CoordinatorID;

    -- 1. Hämta utbildningsledaren (ProgramCoordinator) för en viss klass
SELECT 
    cl.ClassID,
    pc.FirstName AS CoordinatorFirstName,
    pc.LastName AS CoordinatorLastName,
    pc.Email
FROM 
    Class cl
JOIN 
    Coordinator_Class cc ON cl.ClassID = cc.ClassID
JOIN 
    ProgramCoordinator pc ON cc.CoordinatorID = pc.CoordinatorID
WHERE 
    cl.ClassID = 1;




