# YrkesCo Database Project
## 📌 Purpose
This project involves the design and implementation of a relational database system for YrkesCo, a vocational education institution. The goal is to support the management of programs, students, instructors, consultants, courses, coordinators, and locations. The system is built with a focus on data integrity, scalability, and future integration potential.

## 📖 Background
YrkesCo currently manages its data through several Excel files, which creates inefficiency and redundancy. Information about students, instructors, educational leaders, employees, courses, programs, and consultants is spread across various files and learning platforms. Additionally, YrkesCo operates in multiple locations and may expand further.

Therefore, a database solution is needed to manage this data in a structured way.

## 📜 Requirements Specification
YrkesCo has identified the following needs for its database:

- Students: first name, last name, personal identification number, email

- Instructors: can be consultants or permanent employees (future expansion)

- Educational Leaders: personal details and responsibility for three classes

- Courses: name, course code, number of credits, short description

- Programs: have several courses associated with them

- Classes: each program is granted in three rounds, meaning three classes

- Consultants: company, organization number, F-tax, address, hourly rate

- Facilities: Gothenburg and Stockholm (future expansion)


## 🛠️ Technical Perspective

### Data Modeling

The project follows a structured approach to data modeling:

Conceptual Model: Identifies key entities such as Student, Program, Course, Instructor, and the relationships between them.

Logical Model: Defines attributes, primary keys, and relationships using dbdiagram.io format.

Physical Model: Implemented using PostgreSQL SQL scripts.


### Implementation
The system is implemented using structured SQL scripts:

create_tables.sql – Creates all necessary tables with foreign keys

insert_data.sql – Populates tables with example data

test_queries.sql – Includes sample queries to test and retrieve related data

These scripts are located in the sql folder within the root directory of the project.

### Docker
The PostgreSQL database is containerized using Docker, ensuring consistent environment setup and easier deployment. The docker-compose.yml file defines the service configuration for spinning up the database.