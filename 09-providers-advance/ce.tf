resource "google_compute_instance" "us_central1" {
  name         = "test-us-central-1"
  machine_type = "e2-medium"
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

resource "google_compute_instance" "us_west1" {
  provider     = google.us-west1
  name         = "test-us-west-1"
  machine_type = "e2-medium"
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

output "us_central1" {
  value = google_compute_instance.us_central1.id
}
output "us_west1" {
  value = google_compute_instance.us_west1.id
}