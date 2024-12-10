resource "azurerm_user_assigned_identity" "uid" {
  name = var.uid_name
  resource_group_name = var.rg_name
  location = var.location
  tags = var.tags
}