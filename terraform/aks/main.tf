provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "aks" {
  name     = "myResourceGroup12"
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

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Development"
  }
}
