# Database schema: Air travels

The scheme of air travel, connecting passengers from sold tickets

## `Company` — Air travel companies

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `name` | VARCHAR |  | Name of the carrier company |

## `Passenger` — Passengers who bought a ticket

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `name` | VARCHAR |  | Passenger's first and last name |

## `Pass_in_trip` — List of purchased tickets

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `trip` | INT |  | Trip Entity ID |
| `passenger` | INT |  | Passenger Entity ID |
| `place` | VARCHAR |  | Passenger's seat on the plane |

## `Trip` — Flight schedule

| Column | Type | Key | Description |
|--------|------|-----|-------------|
| `id` | INT | 🔑 PK |  |
| `company` | INT |  | Name of the carrier company |
| `plane` | VARCHAR |  | Aircraft model |
| `town_from` | VARCHAR |  | Departure city |
| `town_to` | VARCHAR |  | Arrival city |
| `time_out` | DATETIME |  | Departure time |
| `time_in` | DATETIME |  | Arrival time |

## Relations

- `company.id` → `trip.company` (one-to-many)
- `trip.id` → `pass_in_trip.trip` (one-to-many)
- `passenger.id` → `pass_in_trip.passenger` (one-to-many)
