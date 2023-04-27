data "terraform_remote_state" "network" {
  backend = "gcs"
  config = {
    bucket  = "<terrafomr-backend-bucket>"
    prefix  = "terraform/network"
  }
}
data "google_compute_image" "debian_image" {
  family  = "debian-11"
  project = "debian-cloud"
}

output "static_ip" {
  value = data.terraform_remote_state.network.outputs
}

resource "google_compute_instance" "instance_with_ip" {
  name         = "vm-instance"
  machine_type = "f1-micro"
  zone         = "us-central1-a"

  boot_disk {
    initialize_params {
      image = data.google_compute_image.debian_image.self_link
    }
  }

  network_interface {
    network = "default"
    access_config {
      nat_ip = data.terraform_remote_state.network.outputs.static_ip
    }
  }
}
