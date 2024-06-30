variable "client_id" {
  description = "The client ID for the Azure Service Principal"
  type        = string
}

variable "client_secret" {
  description = "The client secret for the Azure Service Principal"
  type        = string
}

variable "subscription_id" {
  description = "The subscription ID for Azure"
  type        = string
}

variable "tenant_id" {
  description = "The tenant ID for Azure"
  type        = string
}

variable "resource_group_name" {
  description = "The name of the resource group"
  type        = string
}

variable "location" {
  description = "The Azure region to deploy resources"
  type        = string
}

variable "vnet_name" {
  description = "The name of the virtual network"
  type        = string
}

variable "vnet_address_space" {
  description = "The address space for the virtual network"
  type        = string
}

variable "subnet_name" {
  description = "The name of the subnet"
  type        = string
}

variable "node_pool_subnet_name" {
  description = "The name of the node pool subnet"
  type        = string
}

variable "node_pool_subnet_address_prefix" {
  description = "The address prefix for the node pool subnet"
  type        = string
}

variable "subnet_address_prefix" {
  description = "The address prefix for the subnet"
  type        = string
}

variable "aks_cluster_name" {
  description = "The name of the AKS cluster"
  type        = string
}

variable "dns_prefix" {
  description = "The DNS prefix for the AKS cluster"
  type        = string
}

variable "node_pool_name" {
  description = "The name of the node pool"
  type        = string
}

variable "node_count" {
  description = "The number of nodes in the node pool"
  type        = number
}

variable "vm_size" {
  description = "The size of the VM"
  type        = string
}

variable "network_plugin" {
  description = "The network plugin for the AKS cluster"
  type        = string
}

variable "dns_service_ip" {
  description = "The DNS service IP for the AKS cluster"
  type        = string
}

variable "service_cidr" {
  description = "The service CIDR for the AKS cluster"
  type        = string
}

variable "docker_bridge_cidr" {
  description = "The Docker bridge CIDR for the AKS cluster"
  type        = string
}

variable "environment" {
  description = "The environment for the deployment"
  type        = string
}
