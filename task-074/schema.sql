-- DDL for Schedule (postgres)

CREATE TABLE class (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE schedule (
    id INTEGER PRIMARY KEY,
    date DATE,
    class INTEGER,
    number_pair INTEGER,
    teacher INTEGER,
    subject INTEGER,
    classroom INTEGER,
    FOREIGN KEY (class) REFERENCES class(id),
    FOREIGN KEY (number_pair) REFERENCES timepair(id),
    FOREIGN KEY (teacher) REFERENCES teacher(id),
    FOREIGN KEY (subject) REFERENCES subject(id)
);

CREATE TABLE student (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    middle_name VARCHAR(255),
    last_name VARCHAR(255),
    birthday DATE,
    address VARCHAR(255)
);

CREATE TABLE student_in_class (
    id INTEGER PRIMARY KEY,
    class INTEGER,
    student INTEGER,
    FOREIGN KEY (class) REFERENCES class(id),
    FOREIGN KEY (student) REFERENCES student(id)
);

CREATE TABLE subject (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE teacher (
    id INTEGER PRIMARY KEY,
    first_name VARCHAR(255),
    middle_name VARCHAR(255),
    last_name VARCHAR(255)
);

CREATE TABLE timepair (
    id INTEGER PRIMARY KEY,
    start_pair TIME,
    end_pair TIME
);
