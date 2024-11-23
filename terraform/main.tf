terraform {
  required_providers {
    opennebula = {
      source  = "OpenNebula/opennebula"
      version = "~> 1.4"
    }
  }
}

provider "opennebula" {
  endpoint = "https://opennebula.egibide.org/RPC2"
  username = var.opennebula_username
  password = var.opennebula_token
}
