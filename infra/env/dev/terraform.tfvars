rg = {
  stage = {
    name     = "rg-stage-dev"
    location = "eastus"
  }
  aks = {
    name     = "aks-dev-rg"
    location = "eastus"
  }
}

storage_account = {
  "std1" = {
    name                     = "stddev20102026"
    resource_group_name      = "rg-stage-dev"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }


}

aks = {
  "aksdev" = {
    name                = "aks-dev"
    location            = "japanwest"
    resource_group_name = "aks-dev-rg"
    dns_prefix          = "aksdev18102026"
    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "Standard_D2ls_v5"
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}

acr = {
  "acr" = {
    name                = "acrdev18102026"
    resource_group_name = "aks-dev-rg"
    location            = "eastus"
    sku                 = "Basic"
  }
}