resource "azapi_resource" "ai_services" {
  type                      = "Microsoft.CognitiveServices/accounts@2024-04-01"
  name                      = var.aiservice_account_name
  schema_validation_enabled = false
  location                  = var.location
  identity {
    type = "SystemAssigned"
  }
  parent_id = var.resource_group_name
  tags      = var.tags
  body = jsonencode({
    properties = {

      customSubDomainName = var.aiservice_account_name
      publicNetworkAccess = var.publicNetworkAccess

    }
    kind = "AIServices"
    sku = {
      name = var.sku_name
    }
  })
}