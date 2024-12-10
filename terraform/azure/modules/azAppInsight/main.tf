
resource "azurerm_application_insights" "appinsight" {
  application_type    = var.app_type
  location            = var.location
  name                = var.app_insight_name
  resource_group_name = var.resource_group_name
}