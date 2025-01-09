variable "rg_name" {
  default = "myResourceGroup"
}

variable "location" {
  default = "UK West"
}

variable "vnet_name" {
  default = "myVNet"
}

variable "subnet_name" {
  default = "mySubnet"
}

variable "address_space" {
  default = ["10.0.0.0/16"]
}

variable "subnet_prefix" {
  default = ["10.0.1.0/24"]
}

variable "vm_configs" {
  type = list(object({
    vm_name = string
    vm_size = string
  }))
  default = [
    {
      vm_name = "myVM-1"
      vm_size = "Standard_B1s"
    },

  ]
}

variable "admin_username" {
  default = "azureuser"
}

variable "admin_password" {
  default = "P@ssword123!"
}

