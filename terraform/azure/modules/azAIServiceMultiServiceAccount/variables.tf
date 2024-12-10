# variables.tf

variable "location" {
  description = "The location of the resources."
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group."
  type        = string
}

variable "aiservicemulti_account_name" {
  description = "The name of the OpenAI account."
  type        = string
}

variable "sku_name" {
  description = "The SKU name for the OpenAI account."
  type        = string
  default     = "S0"
}


variable "subnet_id" {
  description = "subnet id"
  type        = string
}



variable "tags" {}

