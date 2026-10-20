rg = {
  stage = {
    name     = "rg-stage"
    location = "eastus"
  }
  aks = {
    name     = "aks-dev"
    location = "eastus"
  }
}

storage_account = {
  "std" = {
    name                     = "stddev18102026"
    resource_group_name      = "rg-stage"
    location                 = "eastus"
    account_tier             = "Standard"
    account_replication_type = "LRS"
  }
}

aks = {
  "aksdev" = {
    name                = "aks-dev"
    location            = "eastus"
    resource_group_name = "aks-dev"
    dns_prefix          = "aksdev18102026"
    default_node_pool = {
      name       = "default"
      node_count = 1
      vm_size    = "SStandard_B2s"
    }
    identity = {
      type = "SystemAssigned"
    }
  }
}

acr = {
  "acr" = {
    name                = "acrdev18102026"
    resource_group_name = "aks-dev"
    location            = "eastus"
    sku                 = "Basic"
  }
}