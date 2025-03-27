# Terraform main configuration file.

provider "snowflake" {
  account  = var.snowflake_account
  username = var.snowflake_username
  password = var.snowflake_password
  warehouse = var.snowflake_warehouse
  database = var.snowflake_database
  schema   = var.snowflake_schema
}

resource "snowflake_database" "pokemon_db" {
  name = "POKEMON_DB"
}

resource "snowflake_warehouse" "pokemon_warehouse" {
  name = "POKEMON_WAREHOUSE"
  size = "XSMALL"
}

resource "snowflake_schema" "pokemon_schema" {
  name     = "POKEMON_SCHEMA"
  database = snowflake_database.pokemon_db.name
}
