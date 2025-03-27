# Variables used in Terraform setup.

variable "snowflake_account" {
  description = "The Snowflake account URL"
  type        = string
}

variable "snowflake_username" {
  description = "The Snowflake username"
  type        = string
}

variable "snowflake_password" {
  description = "The Snowflake password"
  type        = string
}

variable "snowflake_warehouse" {
  description = "The Snowflake warehouse"
  type        = string
}

variable "snowflake_database" {
  description = "The Snowflake database"
  type        = string
}

variable "snowflake_schema" {
  description = "The Snowflake schema"
  type        = string
}