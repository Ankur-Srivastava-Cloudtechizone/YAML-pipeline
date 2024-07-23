module "resource_group" {
    source = "../../modules/resource-group"
    rg = var.rg
}

module "storage" {
    depends_on = [ module.resource_group ]
    source = "../../modules/storage-account"
    storage = var.storage
  }