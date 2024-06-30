variable "resource_group_name" {
  description = "The name of the resource group in which to create the AKS cluster"
  type        = string
  default     = "myResourceGroup"
}

variable "location" {
  description = "The Azure region in which to create resources"
  type        = string
  default     = "Central US"
}
