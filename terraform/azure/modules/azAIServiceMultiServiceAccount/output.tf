output "cognitive_account_id" {
  value = azurerm_cognitive_account.aiservicemulti.id
}
output "openai_name" {
  value = azurerm_cognitive_account.aiservicemulti.name
}
output "endpoint" {
  value = azurerm_cognitive_account.aiservicemulti.endpoint
}

output "key" {
  value = azurerm_cognitive_account.aiservicemulti.primary_access_key
}