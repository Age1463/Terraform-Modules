output "container_registry_id" {
  value = azurerm_container_registry.containerRegistry.id
}
output "cr_login_server" {
  value = azurerm_container_registry.containerRegistry.login_server
}
output "cr_username" {
  value = azurerm_container_registry.containerRegistry.admin_username
}
output "cr_password" {
  value = azurerm_container_registry.containerRegistry.admin_password
}
