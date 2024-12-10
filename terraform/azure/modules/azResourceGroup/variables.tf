variable "name" {
  description = "name of the resource group"
  type        = string
}

variable "location" {
  description = "location of the resource group"
  type        = string
}

variable "tags" {
  type = map(string)
}