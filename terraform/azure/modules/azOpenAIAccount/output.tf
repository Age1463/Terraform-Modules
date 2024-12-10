output "cognitive_account_id" {
  value = azurerm_cognitive_account.openai.id
}
output "openai_name" {
  value = azurerm_cognitive_account.openai.name
}
output "endpoint" {
  value = azurerm_cognitive_account.openai.endpoint
}

output "key" {
  value = azurerm_cognitive_account.openai.primary_access_key
}