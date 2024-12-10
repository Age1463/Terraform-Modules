resource "azurerm_container_registry" "containerRegistry" {
  location            = var.location
  name                = var.container_registry_name
  resource_group_name = var.resource_group_name
  sku                 = var.container_registry_sku
  tags = var.tags
  admin_enabled = var.admin_enabled
  public_network_access_enabled = false
  identity {
    type = "SystemAssigned"
  }
}


