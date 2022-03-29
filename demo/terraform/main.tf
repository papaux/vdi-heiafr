###########################
# Configuration for Openstack
###########################
# Import the openstack provider
terraform {
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "1.44.0"
    }
  }
}

# Configure the openstack provider. Variables coming from env.
provider "openstack" {
  auth_url    = "${var.auth_url}"
  region      = "${var.region}"
  user_name   = "${var.username}"
  password    = "${var.password}"
  tenant_name = "${var.tenant}"
}


###########################
# Public Key
###########################
resource "openstack_compute_keypair_v2" "keypair_vdi" {
  name        = "keypair_vdi"
  public_key  = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC6L4/HcffHfh0YVJtS73STnq7WKXTX8QOu6QIig3mN8gn/VIj1WqgbbaOHPOYM5C538wNzdG8HigRXXDiIzeqP07S7i0ZWSHvDheN800jf6DQ/C12Chqd0B2DIEe6BZmQ1nhqxn86zhChfBXyCd31gGDE0OhFq+SbMys/M709E6GjqGD/YxFzTDMSfUcD8h2y50ZcNyFVz+eSCqbQ5+24+jtPtn6NFvO9+roY8Gaf9Lar/+XutLpq81gDHn3n/3iQpI01NSKGOppZto9r155MJZURv4EQHDiD9hi8rmfAEoFAxo+sCMtCZf3W0pGUPSHZzGRaQt4pOkfqf4o/USzH5"
}

###########################
# Security group
###########################
resource "openstack_compute_secgroup_v2" "default_vdi" {
  name        = "default_vdi"
  description = "Default SG for VDI"

  rule {
    from_port   = 22
    to_port     = 22
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  rule {
    from_port   = 8080
    to_port     = 8080
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }

  // nomachine
  rule {
    from_port   = 4000
    to_port     = 4000
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = 4080
    to_port     = 4080
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
  rule {
    from_port   = 4443
    to_port     = 4443
    ip_protocol = "tcp"
    cidr        = "0.0.0.0/0"
  }
    rule {
    from_port   = 4011
    to_port     = 4999
    ip_protocol = "udp"
    cidr        = "0.0.0.0/0"
  }
}


################################
# VDI Instance
################################
data "template_file" "user_data" {
  template = file("data/cloud-init.yaml")
}

resource "openstack_compute_instance_v2" "vdi" {
  name            = "vdi"
  image_name      = "Debian 11.3 bullseye"
  flavor_name     = "a1-ram2-disk20-perf1"
  key_pair        = "keypair_vdi"
  security_groups = ["default_vdi"]
  user_data       = data.template_file.user_data.rendered

  network {
    name = "ext-net1"
  }

  // Get around dependency issues during destroy phase
  depends_on = [ openstack_compute_secgroup_v2.default_vdi ]
}

# export the public IP
output "public_ip" {
  value = openstack_compute_instance_v2.vdi.access_ip_v4
}
