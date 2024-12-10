resource "azurerm_service_plan" "appsplan" {
  location            = var.location
  name                = var.appsp_name
  os_type             = var.os_type
  resource_group_name = var.resource_group_name
  worker_count = var.worker_count
  sku_name            = var.sku
  tags = var.tags
}
resource "azurerm_linux_web_app" "linux_webapp" { 
  location            = var.location
  name                = var.app_service_name
  client_affinity_enabled = true
  resource_group_name = var.resource_group_name
  service_plan_id     = azurerm_service_plan.appsplan.id
  tags = var.tags
  app_settings = {
    WEBSITES_ENABLE_APP_SERVICE_STORAGE: "false"
    WEBSITE_ENABLE_SYNC_UPDATE_SITE: "true"
    DOCKER_CUSTOM_IMAGE_NAME: var.docker_custom_image
    WEBSITES_PORT : var.website_port
    WEBSITE_PULL_IMAGE_OVER_VNET : "true"
  }
  site_config {
    app_command_line = var.app_command_line
    health_check_path = "/logs/healthcheck"
    vnet_route_all_enabled   = true
    application_stack {
      docker_registry_url = var.docker_registry_url
      docker_registry_username = var.docker_registry_username
      docker_registry_password = var.docker_registry_password
      docker_image_name = var.docker_image_name
    }
  }
  identity {
    type = "SystemAssigned"
  }
  // storage_account {
  //   name = var.storage_identifier_name
  //   type = "AzureBlob"
  //   account_name = var.storage_account_name
  //   share_name = var.container_name
  //   access_key = var.access_key
  //   mount_path = "/opt/user-uploads"
  // }
  logs {
    detailed_error_messages = false 
    failed_request_tracing  = false 

    http_logs {
      file_system {
        retention_in_days = 30 
        retention_in_mb   = 35 
        }
    }
  } 
  virtual_network_subnet_id = var.virtual_network_subnet_id
  public_network_access_enabled = false
}

# resource "azurerm_monitor_diagnostic_setting" "diagnostic_settings" {
#    
#   count = length(var.enabled_log)
#   target_resource_id = azurerm_linux_web_app.linux_webapp.id
#   storage_account_id = var.storage_account_id
#   name = lookup(element(var.enabled_log, count.index), "name")
#   enabled_log {
#     category = lookup(element(var.enabled_log, count.index), "logs")
#   }
#   metric {
#     category = "AllMetrics"
#   }
# }



