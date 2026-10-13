# Database schema: Airbnb

A simplified scheme of service for housing delivery in rent

## `Users` — Booking service users

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `name` | VARCHAR |  | First and last name of the user |
| `email` | VARCHAR |  | User's email address |
| `email_verified_at` | DATETIME |  | Date of mail confirmation |
| `password` | VARCHAR |  | Account password |
| `phone_number` | VARCHAR |  | User's phone number |

## `Reservations` — History of room reservations

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `user_id` | INT |  | User ID |
| `room_id` | INT |  | Room ID |
| `start_date` | DATETIME |  | Booking start date |
| `end_date` | DATETIME |  | Booking end date |
| `price` | INT |  | Price per day |
| `total` | INT |  | Total cost of booking |

## `Rooms` — Affordable housing options

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `home_type` | VARCHAR |  | Type of housing |
| `address` | VARCHAR |  | Housing address |
| `has_tv` | BOOLEAN |  | Indicates the presence of a TV |
| `has_internet` | BOOLEAN |  | Indicates the presence of the Internet |
| `has_kitchen` | BOOLEAN |  | Indicates the presence of a kitchen |
| `has_air_con` | BOOLEAN |  | Indicates the presence of an air conditioner |
| `price` | INT |  | Price per day |
| `owner_id` | INT |  | Owner ID (from the Users table) |
| `latitude` | FLOAT |  | Geographical latitude |
| `longitude` | FLOAT |  | Geographical longitude |

## `Reviews` — Reviews of rental housing

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `reservation_id` | INT |  | Reservation ID |
| `rating` | INT |  | Rating (from 1 to 5) |

## Relations

- `reviews.reservation_id` → `reservations.id` (many-to-one)
- `reservations.user_id` → `users.id` (many-to-one)
- `reservations.room_id` → `rooms.id` (many-to-one)
- `rooms.owner_id` → `users.id` (many-to-one)
