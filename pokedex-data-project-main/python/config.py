# Configuration file for PostgreSQL on Azure connection (e.g., credentials)

import os

DB_CONFIG = {
    "dbname": "pokemon_db",
    "user": "adminuser",
    "password": os.getenv("DB_PASSWORD", "your-secure-password"),
    "host": os.getenv("DB_HOST", "pokedata-db.postgres.database.azure.com"),
    "port": 5432
}
