output "storage_account" {
  value = azurerm_storage_account.storageAccount.id
}

output "access_key" {
  value = azurerm_storage_account.storageAccount.primary_access_key
}

output "name" {
  value = azurerm_storage_account.storageAccount.name
}