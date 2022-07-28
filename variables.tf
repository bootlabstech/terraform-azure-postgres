variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "postgres_name" {
  type        = string
  description = "name of the azurerm_postgresql_server"
}

variable "administrator_login" {
  type        = string
  description = "username of the azurerm_postgresql_server"
}

variable "administrator_login_password" {
  type        = string
  description = "password of the azurerm_postgresql_server"
}

variable "postgresql-db_name" {
  type        = string
  description = "name of the azurerm_postgresql_database"
}
