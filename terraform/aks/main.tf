provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = var.aks_cluster_name
  location            = var.location
  resource_group_name = var.resource_group_name
  dns_prefix          = var.dns_prefix

  default_node_pool {
    name       = var.node_pool_name
    node_count = var.node_count
    vm_size    = var.vm_size
    vnet_subnet_id = azurerm_subnet.subnet_node_pool.id
  }

  network_profile {
    network_plugin      = var.network_plugin
    dns_service_ip      = var.dns_service_ip
    service_cidr        = var.service_cidr
    docker_bridge_cidr  = var.docker_bridge_cidr
  }

  identity {
    type = "SystemAssigned"
  }

  service_principal {
    client_id     = var.client_id
    client_secret = var.client_secret
  }

  tags = {
    Environment = var.environment
  }
}
