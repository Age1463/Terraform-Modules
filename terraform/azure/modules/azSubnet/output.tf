output "subnetId" {
  value =  azurerm_subnet.subnets[*].id
}