resource "google_compute_instance" "default" {
  name         = var.name
  machine_type = lookup(var.machine_type, terraform.workspace)
  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
      labels = {
        my_label = "value"
      }
    }
  }
  network_interface {
    network = "default"
  }
}