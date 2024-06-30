variable "client_id" {
  description = "Azure Client ID"
}

variable "client_secret" {
  description = "Azure Client Secret"
}

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

variable "vnet_name" {
  description = "Name of the Virtual Network"
}

variable "vnet_address_space" {
  description = "Address space of the Virtual Network"
}

variable "subnet_name" {
  description = "Name of the Subnet"
}

variable "subnet_address_prefix" {
  description = "Address prefix of the Subnet"
}

variable "node_pool_subnet_name" {
  description = "Name of the Node Pool Subnet"
}

variable "node_pool_subnet_address_prefix" {
  description = "Address prefix of the Node Pool Subnet"
}

variable "aks_cluster_name" {
  description = "Name of the AKS Cluster"
}

variable "dns_prefix" {
  description = "DNS Prefix for the AKS Cluster"
}

variable "node_pool_name" {
  description = "Name of the Node Pool"
}

variable "node_count" {
  description = "Number of Nodes in the Node Pool"
}

variable "vm_size" {
  description = "Size of the Virtual Machines in the Node Pool"
}

variable "network_plugin" {
  description = "Network Plugin for the AKS Cluster"
}

variable "dns_service_ip" {
  description = "DNS Service IP for the AKS Cluster"
}

variable "service_cidr" {
  description = "Service CIDR for the AKS Cluster"
}

variable "docker_bridge_cidr" {
  description = "Docker Bridge CIDR for the AKS Cluster"
}

variable "environment" {
  description = "Environment Tag for the Resources"
}