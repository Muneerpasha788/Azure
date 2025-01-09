resource "azurerm_network_interface" "nic" {
    count               = 2
    name                = "${var.vm_name}-nic-${count.index}"
    location            = var.location
    resource_group_name = var.rg_name

    ip_configuration {
    name                          = "ipconfig"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
} 

resource"azurerm_virtual_machine" "VM" {
    count               = 2
    name                = "${var.vm_name}-${count.index}"
    resource_group_name = var.rg_name
    location            = var.location
    network_interface_ids = [azurerm_network_interface.nic[count.index].id]
    vm_size             = var.vm_size

  os_profile {
    computer_name  = var.vm_name
    admin_username = var.admin_username
    admin_password = var.admin_password
  }

  os_profile_windows_config {
    provision_vm_agent = true
  }

  storage_os_disk {
    name              = "${var.vm_name}-${count.index}-osdisk"
    caching           = "ReadWrite"
    create_option     = "FromImage"
    managed_disk_type = "Standard_LRS"
  }

  storage_image_reference {
    publisher = "MicrosoftWindowsServer"
    offer     = "WindowsServer"
    sku       = "2019-Datacenter"
    version   = "latest"
  }
}

