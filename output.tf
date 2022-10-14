output "postgresql_server" {
  value     = azurerm_postgresql_server.postgres
  sensitive = true
}
