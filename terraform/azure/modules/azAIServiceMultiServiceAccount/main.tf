resource "azurerm_cognitive_account" "aiservicemulti" {
  name                               = var.aiservicemulti_account_name
  resource_group_name                = var.resource_group_name
  location                           = var.location
  kind                               = "CognitiveServices"
  sku_name                           = var.sku_name
  outbound_network_access_restricted = true
  custom_subdomain_name              = var.aiservicemulti_account_name
  public_network_access_enabled      = false
  tags                               = var.tags
}

