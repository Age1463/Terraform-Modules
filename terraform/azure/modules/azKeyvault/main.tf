resource "azurerm_key_vault" "keyvault" {
  location            = var.location
  name                = var.name
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  tenant_id           = var.tenant_id
  tags                = var.tags
  public_network_access_enabled = false
  enabled_for_disk_encryption = true
  soft_delete_retention_days = 7
  purge_protection_enabled = false
  network_acls {
    bypass         = "AzureServices"
    default_action = var.public_access
#     ip_rules       = var.allowed_ip_ranges
#     virtual_network_subnet_ids = var.vnet_subnet_ids
  }
}