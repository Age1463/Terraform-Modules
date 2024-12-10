resource "azurerm_storage_account" "storageAccount" {
  account_replication_type          = var.account_replication_type
  account_tier                      = var.account_tier
  location                          = var.location
  name                              = var.name
  resource_group_name               = var.resource_group_name
  public_network_access_enabled     = false
  tags                              = var.tags
  infrastructure_encryption_enabled = true
  enable_https_traffic_only         = true
  network_rules {
    bypass = ["AzureServices"]
    default_action             = var.public_access
#     ip_rules                   = var.allowed_ip_ranges
#     virtual_network_subnet_ids = var.vnet_subnet_ids
  }
}