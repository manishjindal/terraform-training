provider "google" {
  project = "<project_id 1>"
  region  = "us-central1"
  zone    = "us-central1-a"
}

provider "google" {
  alias   = "us-west1"
  project = "<project_id 2>"
  region  = "us-west1"
  zone    = "us-west1-a"
}