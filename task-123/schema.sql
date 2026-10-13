-- DDL for Finstar Financial Group (postgres)

CREATE TABLE Employee (
    id INTEGER PRIMARY KEY,
    emp_name VARCHAR(255),
    rating INTEGER
);

CREATE TABLE Tasks (
    id INTEGER PRIMARY KEY,
    assignee_id INTEGER,
    rating INTEGER,
    FOREIGN KEY (assignee_id) REFERENCES Employee(id)
);
