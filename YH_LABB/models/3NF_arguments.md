# Does the model satisfy third normal form (3NF)?

The model satisfies 1NF
- 
All tables have a unique primary key (e.g. StudentID in the Student table), and all attributes are atomic, meaning no colums contain multiple values (e.g. multiple email addresses in the same cell)

The model satisfies 2NF
- 
To meet 2NF, all non-prime attributes must be fully functionally dependent on the entire primary key, not just part of it. There are no partial dependencies where part of the primary key determines an attribute in the table. For example, in the Student table, all attributes (such as FirstName, LastName, PersonalNumber) are fully dependant on the primary key StudentID and not on part of it. 

Transitive dependencies
- 
To achieve 3NF we must achieve 1NF, 2NF and ensure there are no transitive dependencies. This means that a non-prime attribute cannot be dependent on another non-prime attribute. 

- In the Student table, all attributes depend on StudentID, which is the primary key. There is no situation where, for example, Email would depend on ProgramID or any other non-prime attribute.
- In the Instructor table 
- In the Consultant table
- In the Course table
- The same logic applies for other tables such as Location, Program and Coordinator_Class. All attributes either depend on the primary key or they link two entities without adding any additional dependencies.

Conclusion
- 
To conclude, the model does satisfy 3NF because. All tables are in 1NF with atomic attributes and clearly defines primary keys. They are also in 2NF as there are no partial dependencies on the compositekeys. Finally, the model satisfies3NF because there are no transitive dependencies - all non-key attributes depend solely on the primary key of their repective tables. This structure helps ensure dataa integrity, reduces redundancy, and makes the model easier to maintain and scale. 
