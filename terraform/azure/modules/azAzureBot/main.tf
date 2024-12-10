
#Azure Bot
resource "azurerm_bot_service_azure_bot" "azurebot" {
  location                              = var.location
  microsoft_app_id                      = var.client_id
  name                                  = var.bot_name
  resource_group_name                   = var.rg_name
  sku                                   = var.sku
  tags                                  = var.tags
  display_name                          = var.display_name
  microsoft_app_tenant_id               = var.tenant_id
  microsoft_app_type                    = "SingleTenant"  # type of app registration used
  public_network_access_enabled         = false
}

resource "azurerm_bot_channel_ms_teams" "teams_channel" {
  bot_name            = azurerm_bot_service_azure_bot.azurebot.name
  location            = var.location
  resource_group_name = var.rg_name
}

