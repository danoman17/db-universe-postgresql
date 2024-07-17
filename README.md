# Universe Database Project

## Overview

This project involves building a comprehensive PostgreSQL database that models a universe with various celestial entities including galaxies, stars, planets, moons, and asteroids. The database is designed to store detailed information about these entities and their relationships.

## Database Structure

The database consists of the following tables:

- `asteroid`
- `galaxy`
- `moon`
- `planet`
- `star`

Each table includes specific attributes that provide detailed information about the entities. The relationships between these entities are defined using foreign keys.

### Table Details

- **asteroid**: Stores information about asteroids, including their size, description, and associated galaxy.
- **galaxy**: Stores information about galaxies, including their type, size, and distance from Earth.
- **moon**: Stores information about moons, including their size, description, and associated planet.
- **planet**: Stores information about planets, including their size, description, and associated star.
- **star**: Stores information about stars, including their age, description, and associated galaxy.

## Key Features

- **Normalization**: Ensures data integrity and eliminates redundancy.
- **Constraints**: Includes primary keys, unique constraints, and foreign keys to maintain relationships and data accuracy.
- **Sample Data**: Populated with sample data for testing and demonstration purposes.

## Setup

To set up the database on your local machine:

1. Ensure you have PostgreSQL installed.
2. Clone this repository.
3. Execute the provided SQL dump file to create the database and populate it with sample data:

   ```sh
   psql -U <your_username> -f universe_dump.sql

## Usage
Once the database is set up, you can interact with it using SQL queries to retrieve information about various celestial entities. Here are some example queries:

- Retrieve all planets in the database:
   ```sh
  SELECT * FROM planet;

- Find all moons orbiting a specific planet (e.g., Earth):
   ```sh
  SELECT * FROM moon WHERE planet_id = (SELECT planet_id FROM planet WHERE name = 'Earth');

- List all stars in a specific galaxy (e.g., Milky Way):
   ```sh
  SELECT * FROM star WHERE galaxy_id = (SELECT galaxy_id FROM galaxy WHERE name = 'Milky Way');

## Conclusion
This project demonstrates the ability to design, implement, and manage a complex relational database in PostgreSQL. It showcases data modeling skills, knowledge of SQL, and understanding of database constraints and normalization.

Feel free to explore the database and modify it as needed for your purposes.



