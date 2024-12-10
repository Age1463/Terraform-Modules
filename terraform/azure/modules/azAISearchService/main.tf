resource "azurerm_search_service" "AI_search" {
  semantic_search_sku = "standard"
  authentication_failure_mode    = "http401WithBearerChallenge"
  location            = var.location
  name                = var.AI_search_name
  resource_group_name = var.resource_group_name
  sku                 = var.sku
  public_network_access_enabled = false
  replica_count = var.replica_count
  tags = var.tags
  identity {
    type = "SystemAssigned"
  }
}

