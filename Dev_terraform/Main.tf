
module "resource_group" {
  source   = "./modules/resource_group"
  rg_name  = var.rg_name
  location = var.location
}

module "network" {
  source        = "./modules/network"
  rg_name       = module.resource_group.rg_name
  vnet_name     = var.vnet_name
  subnet_name   = var.subnet_name
  address_space = var.address_space
  subnet_prefix = var.subnet_prefix
  location      = var.location
}

module "VM" {
  source         = "./modules/VM"
  count          = length(var.vm_configs)
  rg_name        = module.resource_group.rg_name
  location       = var.location
  vm_name        = var.vm_configs[count.index].vm_name
  vm_size        = var.vm_configs[count.index].vm_size
  admin_username = var.admin_username
  admin_password = var.admin_password
  subnet_id      = module.network.subnet_id
}
