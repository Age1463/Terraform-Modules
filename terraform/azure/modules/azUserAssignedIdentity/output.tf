output "id" {
  value = azurerm_user_assigned_identity.uid.id
}

output "client_id" {
  value = azurerm_user_assigned_identity.uid.client_id
}

output "object_id" {
  value = azurerm_user_assigned_identity.uid.principal_id
}