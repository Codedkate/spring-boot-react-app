resource "azurerm_resource_group" "rg" {
  name     = "java-springrg1"
  location = "West Europe"
}

resource "azurerm_kubernetes_cluster" "aks" {
  name                = "java-springboot-aks"
  location            = azurerm_resource_group.rg.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix          = "javaspringbootaks1"

  default_node_pool {
    name       = "agentpool"
    vm_size    = "Standard_D2_v2"
    node_count =           3
    enable_auto_scaling  = true
    max_count            = 3
    min_count            = 1
    type                 = "VirtualMachineScaleSets"
  }
  network_profile {
    network_plugin    = "kubenet"
    load_balancer_sku = "standard"
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}