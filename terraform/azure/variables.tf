#Resource Group
variable "resource_group_name" {}
variable "location" {}
 variable "tags" {
  #  type = map(string)
 }

#Virtual Network
variable "virtual_network_name" {}
variable "vnet_address_space" {}
variable "vnet_location" {}

#Subnet
variable "subnets" {}

# Route Table
variable "route_table_name" {}
variable "route_table_location" {}

#Routes
variable "route_name" {}

#NSG
variable "nsg_location" {}
variable "nsg_name" {}

#Rules
variable "nsg_rules" {}

#AISearch
variable "AISearch_name" {}
variable "AISearch_location" {}
variable "AISearch_sku" {}
variable "replica_count" {}

#AIService
variable "aiservice_name" {}
variable "aiservice_location" {}
variable "aiservice_sku" {}
variable "public_access" {}

#AIServiceMultiService
variable "AIServiceMultiService_name" {}
variable "AIServiceMultiService_location" {}

#App Service
variable "docker_registry_username" {}
variable "docker_registry_url" {}
variable "docker_registry_password" {}
variable "docker_image_name" {}
variable "docker_custom_image" {}
variable "appsp_name" {}
variable "app_service_name" {}
variable "app_command_line" {}
variable "os_type" {}
variable "sku" {}
variable "app_location" {}
variable "port" {}
variable "worker_count" {}


#Azure Bot
variable "bot_name" {}
variable "bot_location" {}
variable "bot_sku" {}
variable "client_id" {}
variable "tenant_id" {}
variable "display_name" {}

#ACR
variable "acr_name" {}
variable "acr_location" {}
variable "acr_sku" {}
variable "admin_enabled" {}

#key vault
variable "kv_name" {}
variable "kv_location" {}
variable "kv_sku" {}
variable "kv_public_access" {}

#Access policies
variable "object_id" {}
variable "secret_permission" {}

#SA
variable "sa_name" {}
variable "sa_location" {}
variable "sa_account_tier" {}
variable "sa_replication_tier" {}
variable "sa_public_access" {}

#open ai
variable "openai_name" {}
variable "openai_deployment" {}
variable "openai_location" {}
variable "openai_sku" {}

#Ai Studio Hub
variable "hub_name" {}
variable "hub_location" {}
variable "hub_public_access" {}
variable "project_name" {}
variable "project_location" {}
variable "outboundaccessType" {}

#dnszone
variable "dns_name" {}

#pep
variable "pep_name" {}
variable "psc_name" {}
variable "pc_id" {}
variable "subresource_name" {}


#App Insights
variable "AppInsights_name" {}
variable "AppInsights_location" {}
variable "AppInsights_type" {}