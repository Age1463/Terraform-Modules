resource "azurerm_cognitive_account" "openai" {
   
  name                = var.openai_account_name
  resource_group_name = var.resource_group_name
  location            = var.location
  kind                = "OpenAI"
  sku_name            = var.sku_name
  outbound_network_access_restricted = true
  custom_subdomain_name = var.openai_account_name
  public_network_access_enabled = false
  tags = var.tags
}


resource "azurerm_cognitive_deployment" "deployment" {
  for_each = { for d in var.openai_deployments : d.name => d }
  cognitive_account_id   = azurerm_cognitive_account.openai.id
  name                   = each.value.name
  version_upgrade_option = each.value.version_upgrade_option
  model {
    format  = each.value.model_format
    name    = each.value.model_name
    version = each.value.model_version
  }
  ##Deprecated##
  # scale {
  #   type = each.value.type
  #   capacity = each.value.capacity
  # }
  ##############
  sku {
    name = each.value.type
    capacity = each.value.capacity
  }
}

