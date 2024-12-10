module "AzureBot" {
  source = "./modules/azAzureBot"
  bot_name = var.bot_name
  client_id = var.client_id
  display_name = var.display_name
  location = var.bot_location
  rg_name = module.RG.resourceGroupName
  sku = var.bot_sku
  tags = var.tags
  tenant_id = var.tenant_id
}