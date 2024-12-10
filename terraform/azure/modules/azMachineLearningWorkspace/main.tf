resource "azurerm_machine_learning_workspace" "mlworkspace" {
  key_vault_id            = var.keyVault_id
  location                = var.location
  name                    = var.mlworkspace_name
  friendly_name = var.mlworkspace_name
#   kind = "Hub"
  sku_name = "Basic"
  # privateEndpointtype = "ManualApproval"
  # defaultProjectResourceGroup = var.resource_group_name
  # dynamic "sbh" {
  #   for_each = ""
  #   content {
  #     aiServicesOption = "existing"
  #     aiServicesKind   = "OpenAI"
  #     aiServicesName   = var.openai_name
  #   }
  # }

  resource_group_name     = var.resource_group_name
  storage_account_id      = var.storage_id
  application_insights_id = var.app_insight_id
  identity {
    type = "SystemAssigned"
  }


  public_network_access_enabled = false
}
