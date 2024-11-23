output "name" {
  value = opennebula_virtual_machine.vm.name
}

output "id" {
  value = opennebula_virtual_machine.vm.id
}

output "ip" {
  value = opennebula_virtual_machine.vm.nic[0].computed_ip
}
