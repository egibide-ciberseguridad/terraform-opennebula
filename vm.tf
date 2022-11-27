resource "opennebula_virtual_machine" "ubuntu" {

  template_id = 96 # Ubuntu 22.04

  name = "ubuntu-22-04"

  cpu    = 0.5
  memory = 1024

  context = {
    START_SCRIPT = "apt update && apt dist-upgrade -y"
  }

  nic {
    model      = "virtio"
    network_id = 27 # demo
  }

  disk {
    image_id = 69 # Ubuntu 22.04
    target   = "vda"
    size     = 8192
  }
}
