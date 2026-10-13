-- DDL for Schedule (postgres)

CREATE TABLE Lessons (
    id INTEGER PRIMARY KEY,
    subject VARCHAR(255),
    teacher_name VARCHAR(255),
    lesson_date DATE,
    classroom VARCHAR(255)
);

CREATE TABLE Timepair (
    id INTEGER PRIMARY KEY,
    start_time TIME,
    end_time TIME
);
