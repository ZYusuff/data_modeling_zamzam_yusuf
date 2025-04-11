Table Student {
  StudentID int [pk]
  FirstName varchar
  LastName varchar
  PersonalNumber varchar
  Email varchar
  ProgramID int [ref: > Program.ProgramID]
  ClassID int [ref: > Class.ClassID]
}

Table Program {
  ProgramID int [pk]
  Name varchar
  Description text
}

Table Class {
  ClassID int [pk]
  ProgramID int [ref: > Program.ProgramID]
  CohortYear int
}

Table Course {
  CourseID int [pk]
  Name varchar
  CourseCode varchar
  Credits int
  Description text
  ProgramID int [ref: > Program.ProgramID]
}

Table Instructor {
  InstructorID int [pk]
  FirstName varchar
  LastName varchar
  Email varchar
  Type varchar // Consultant or Permanent
}

Table Consultant {
  ConsultantID int [pk, ref: > Instructor.InstructorID]
  CompanyName varchar
  OrgNumber varchar
  HasFtax boolean
  HourlyRate decimal
}

Table ProgramCoordinator {
  CoordinatorID int [pk]
  FirstName varchar
  LastName varchar
  Email varchar
}

Table Coordinator_Class {
  CoordinatorID int [ref: > ProgramCoordinator.CoordinatorID]
  ClassID int [ref: > Class.ClassID]
}

Table Location {
  LocationID int [pk]
  City varchar
  Address text
}

Table Student_Location {
  StudentID int [ref: > Student.StudentID]
  LocationID int [ref: > Location.LocationID]
}

Table Instructor_Course {
  InstructorID int [ref: > Instructor.InstructorID]
  CourseID int [ref: > Course.CourseID]
}