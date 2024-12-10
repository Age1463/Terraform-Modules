resource "azurerm_role_assignment" "RBAC" {
  role_definition_name = var.role_definition_name
  scope = var.scope
  principal_id = var.principal_id
}