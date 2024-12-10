output "virtual_machine_id" {
  value = azurerm_windows_virtual_machine.windows_virtual_machine.id
}

output "vm_object_id" {
  value = azurerm_windows_virtual_machine.windows_virtual_machine.identity[0].principal_id
}

output "vm_tenant_id" {
  value = azurerm_windows_virtual_machine.windows_virtual_machine.identity[0].tenant_id
}