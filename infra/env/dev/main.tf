module "rg" {
  source = "../../modules/resource group"
  rg     = var.rg
}
module "std" {
  depends_on      = [module.rg]
  source          = "../../modules/storage account"
  storage_account = var.storage_account
}

module "aks" {
  depends_on = [module.rg]
  source     = "../../modules/aks"
  aks        = var.aks
}

module "acr" {
  depends_on = [module.rg]
  source     = "../../modules/acr"
  acr        = var.acr
}