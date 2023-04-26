/*

terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.63.0"
    }
  }
  required_version = ">= 1.3"

  backend "gcs" {
    bucket  = "<terraform-backend-bucket>"
    prefix  = "terraform/state"
  }
}
*/


terraform {
  required_providers {
    google = {
      source = "hashicorp/google"
      version = "4.63.0"
    }
  }
  required_version = ">= 1.3"

  backend "gcs" {
  }
}

