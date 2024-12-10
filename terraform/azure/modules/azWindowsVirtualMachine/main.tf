resource "azurerm_network_interface" "network_interface" {
  location            = var.location
  name                = var.vm_nic_name
  tags                = var.tags
  resource_group_name = var.resource_group_name
  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation =  "Dynamic"
  }
}


resource "azurerm_windows_virtual_machine" "windows_virtual_machine" {
  admin_username        = var.admin_username
  admin_password        = var.admin_password
  location              = var.location
  name                  = var.vm_name
  computer_name         = var.computer_name
  tags                  = var.tags
  network_interface_ids = [azurerm_network_interface.network_interface.id]
  resource_group_name   = var.resource_group_name
  size                  = var.vm_size
  license_type = "Windows_Client"
  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
    disk_size_gb = "512"
  }
  identity {
    type = "SystemAssigned"
  }
  source_image_reference {
    publisher= "MicrosoftWindowsDesktop"
    offer= "Windows-10"
    sku= "win10-22h2-avd-g2"
    version= "latest"
  }
}