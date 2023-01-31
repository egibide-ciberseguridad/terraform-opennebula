output "name" {
  value = opennebula_virtual_machine.ubuntu.name
}

output "ip" {
  value = opennebula_virtual_machine.ubuntu.nic[0].computed_ip
}
