resource "opennebula_virtual_machine" "vm" {

  template_id = data.opennebula_template.template.id

  name = "alpine"

  cpu    = 0.25
  memory = 128
  group  = var.opennebula_group

  context = {
    NETWORK      = "YES"
    SET_HOSTNAME = "$NAME"
  }

  nic {
    model      = "virtio"
    network_id = data.opennebula_virtual_network.network.id
  }

  disk {
    image_id = data.opennebula_template.template.disk[0].image_id
    target   = "vda"
    size     = 256
  }
}
