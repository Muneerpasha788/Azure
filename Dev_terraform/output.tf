output "vm_public_ips" {
  value = module.VM[*].public_ip
}
