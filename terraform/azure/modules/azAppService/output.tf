output "appsp_id" {
  value = azurerm_service_plan.appsplan.id
}
output "app_service_id" {
  value = azurerm_linux_web_app.linux_webapp.id
}
# output "app_service_endpoint" {
#   value = azurerm_app_service.app.
# }
output "tenant_id" {
  value = azurerm_linux_web_app.linux_webapp.identity[0].tenant_id
}

output "principal_id" {
  value = "f4445976-ad06-4f67-a878-ffd6bcac602b"
}

output "sid" {
  value = azurerm_linux_web_app.linux_webapp.identity[0].principal_id
}
