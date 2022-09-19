resource "azurerm_postgresql_server" "postgres" {
  name                = var.postgres_name
  location            = var.location
  resource_group_name = var.resource_group_name

  administrator_login          = var.administrator_login
  administrator_login_password = var.administrator_login_password

  sku_name   = "GP_Gen5_4"
  version    = "11"
  storage_mb = 640000

  backup_retention_days        = 7
  geo_redundant_backup_enabled = true
  auto_grow_enabled            = true

  public_network_access_enabled    = false
  ssl_enforcement_enabled          = true
  ssl_minimal_tls_version_enforced = "TLS1_2"
}

resource "azurerm_postgresql_database" "postgresql-db" {
  name                = var.postgresql-db_name
  resource_group_name = var.resource_group_name
  server_name         = azurerm_postgresql_server.postgres.name
  charset             = "utf8"
  collation           = "English_United States.1252"
}