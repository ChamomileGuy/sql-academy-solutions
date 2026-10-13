-- DDL for Air travels (postgres)

CREATE TABLE company (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE passenger (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255)
);

CREATE TABLE pass_in_trip (
    id INTEGER PRIMARY KEY,
    trip INTEGER,
    passenger INTEGER,
    place VARCHAR(255),
    FOREIGN KEY (trip) REFERENCES trip(id),
    FOREIGN KEY (passenger) REFERENCES passenger(id)
);

CREATE TABLE trip (
    id INTEGER PRIMARY KEY,
    company INTEGER,
    plane VARCHAR(255),
    town_from VARCHAR(255),
    town_to VARCHAR(255),
    time_out TIMESTAMP,
    time_in TIMESTAMP,
    FOREIGN KEY (company) REFERENCES company(id)
);
