resource "azapi_resource" "AI_studio_hub" {
  type                      = "Microsoft.MachineLearningServices/workspaces@2024-04-01"
  name                      = var.AI_Studio_name
  location                  = var.hub_location
  parent_id                 = var.resource_group_id
  tags                      = var.tags
  schema_validation_enabled = false
  identity {
    type = "SystemAssigned"
  }
  body = jsonencode({
    properties = {
      description    = "Azure AI Studio Hub"
      friendlyName   = var.AI_Studio_name
      storageAccount = var.storage_id
      keyVault       = var.keyvault_id
      applicationInsights = var.app_insight_id
      containerRegistry = var.acr_id
      "managedNetwork" : {
        "isolationMode" : var.outboundaccessType,
        "outboundRules" : {
          "internet" : {
            "type" : "ServiceTag",
            "destination" : {
              "serviceTag" : "Internet",
              "protocol" : "TCP",
              "portRanges" : "443",
              "action" : "Allow"
            }
          },
          "Connection_aiservice_account" : {
            "type" : "PrivateEndpoint",
            "destination" : {
              "serviceResourceId" : var.ai_search_id,
              "subresourceTarget" : "searchService",
              "sparkEnabled" : false,
              "sparkStatus" : "Inactive"
            },
            "status" : "Active"
          },
          "Connection_aiservicemultiservice_account" : {
            "type" : "PrivateEndpoint",
            "destination" : {
              "serviceResourceId" : var.ai_service_multiservice_id,
              "subresourceTarget" : "account",
              "sparkEnabled" : false,
              "sparkStatus" : "Inactive"
            },
            "status" : "Active"
          },
          "Connection_openai_account" : {
            "type" : "PrivateEndpoint",
            "destination" : {
              "serviceResourceId" : var.openai_id,
              "subresourceTarget" : "account",
              "sparkEnabled" : false,
              "sparkStatus" : "Inactive"
            },
            "status" : "Active"
          }
        }
      }
      publicNetworkAccess = var.publicNetworkAccess
    }
    kind = "Hub"
  })
}

resource "azapi_resource" "Project" {
  type                      = "Microsoft.MachineLearningServices/workspaces@2024-04-01"
  name                      = var.project_name
  location                  = var.project_location
  schema_validation_enabled = false
  tags                      = var.tags1
  parent_id                 = var.resource_group_id
  identity {
    type = "SystemAssigned"
  }
  body = jsonencode({
    properties = {
      description   = " This is McCain Generic ChatBot Project"
      friendlyName  = var.project_name
      hubResourceId = azapi_resource.AI_studio_hub.id
    }
    kind = "Project"
  })
}

