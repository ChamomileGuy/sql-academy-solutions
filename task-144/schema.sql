-- DDL for Airbnb (postgres)

CREATE TABLE users (
    id INTEGER PRIMARY KEY,
    name VARCHAR(255),
    email VARCHAR(255),
    email_verified_at TIMESTAMP,
    password VARCHAR(255),
    phone_number VARCHAR(255)
);

CREATE TABLE reservations (
    id INTEGER PRIMARY KEY,
    user_id INTEGER,
    room_id INTEGER,
    start_date TIMESTAMP,
    end_date TIMESTAMP,
    price INTEGER,
    total INTEGER,
    FOREIGN KEY (user_id) REFERENCES users(id),
    FOREIGN KEY (room_id) REFERENCES rooms(id)
);

CREATE TABLE rooms (
    id INTEGER PRIMARY KEY,
    home_type VARCHAR(255),
    address VARCHAR(255),
    has_tv BOOLEAN,
    has_internet BOOLEAN,
    has_kitchen BOOLEAN,
    has_air_con BOOLEAN,
    price INTEGER,
    owner_id INTEGER,
    latitude DOUBLE PRECISION,
    longitude DOUBLE PRECISION,
    FOREIGN KEY (owner_id) REFERENCES users(id)
);

CREATE TABLE reviews (
    id INTEGER PRIMARY KEY,
    reservation_id INTEGER,
    rating INTEGER,
    FOREIGN KEY (reservation_id) REFERENCES reservations(id)
);
