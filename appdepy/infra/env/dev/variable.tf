
variable "rg" {
  type = map(object({
    name     = string
    location = string
  }))
}
variable "storage_account" {
  type = map(object({
    name                     = string
    resource_group_name      = string
    location                 = string
    account_tier             = string
    account_replication_type = string
  }))

}

variable "aks" {
  type = map(object({
    name                = string
    location            = string
    resource_group_name = string
    dns_prefix          = string
    default_node_pool = object({
      name       = string
      node_count = number
      vm_size    = string
    })
    identity = object({
      type = string
    })
  }))

}
variable "acr" {
  type = map(object({
    name                = string
    resource_group_name = string
    location            = string
    sku                 = string
  }))

}

