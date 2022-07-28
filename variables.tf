variable "resource_group_name" {
  type        = string
  description = "name of the resource group"
}

variable "location" {
  type        = string
  description = "location of the resource group"
}

variable "name" {
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

variable "sku_name" {
  type        = string
  description = "sku of the azurerm_postgresql_server"
}

variable "version" {
  type        = string
  description = "version of the azurerm_postgresql_server"
}

variable "storage_mb" {
  type        = string
  description = "storage_mb of the azurerm_postgresql_server"
}
