variable "resourceGroupName" {
  type    = string
}

variable "location" {
  description = "location of the resource group"
  type        = string
}

variable "virtualNetworkName" {
  description = "name of the virtual network"
  type        = string
}

variable "tags" {
  type = map(string)
}

variable "vnetAddressSpace" {
  type = list(any)
}