variable "client_id" {
  description = "Azure Client ID"
}

variable "client_secret" {
  description = "Azure Client Secret"
}

variable "resource_group_name" {
  description = "Name of the resource group"
}

variable "location" {
  description = "Azure location"
}

variable "vnet_name" {
  description = "Name of the virtual network"
}

variable "vnet_address_space" {
  description = "Address space for the virtual network"
}

variable "subnet_name" {
  description = "Name of the subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix for the subnet"
}

variable "node_pool_subnet_name" {
  description = "Name of the subnet for the node pool"
}

variable "node_pool_subnet_address_prefix" {
  description = "Address prefix for the subnet of the node pool"
}

variable "aks_cluster_name" {
  description = "Name of the AKS cluster"
}

variable "dns_prefix" {
  description = "DNS prefix for the AKS cluster"
}

variable "node_pool_name" {
  description = "Name of the node pool"
}

variable "node_count" {
  description = "Number of nodes in the node pool"
}

variable "vm_size" {
  description = "VM size for the node pool"
}

variable "network_plugin" {
  description = "Network plugin for the AKS cluster"
  default     = "azure"
}

variable "dns_service_ip" {
  description = "DNS service IP"
}

variable "service_cidr" {
  description = "Service CIDR"
}

variable "docker_bridge_cidr" {
  description = "Docker bridge CIDR"
}

variable "environment" {
  description = "Environment tag"
}
