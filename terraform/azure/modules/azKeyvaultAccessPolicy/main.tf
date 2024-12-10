resource "azurerm_key_vault_access_policy" "keyvaultaccesspolicy" {
  key_vault_id = var.keyvault_id
  object_id    = var.object_id
  tenant_id    = var.tenant_id
  secret_permissions = var.secret_permissions
}

