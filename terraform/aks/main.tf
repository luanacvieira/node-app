provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks" {
  name     = "myResourceGroup13"
  location = "Central US"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "myAKSCluster2"
  location            = "Central US"
  resource_group_name = azurerm_resource_group.aks.name
  dns_prefix          = "myClusterAksNodeApp-dns"

  default_node_pool {
    name       = "default"
    node_count = 2
    vm_size    = "Standard_DS2_v2"
  }

  network_profile {
    network_plugin = "azure"
    dns_service_ip = "10.0.10.10"
    service_cidr   = "10.0.10.0/24"
    docker_bridge_cidr = "172.17.0.1/16"
  }
  
  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}
