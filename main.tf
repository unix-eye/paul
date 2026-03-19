variable "gcp_project" {}

provider "google" {
  project = "qwiklabs-gcp-04-5ce8bcf61c8b"
  region  = "us-west1"
}

terraform {
  backend "gcs" {
    bucket  = "tf-remote-state-student_00_0c7e38130425-15820-14552"
    prefix  = "terraform/state/lab01" 
  }
}

resource "google_compute_network" "example_vpc" {
  name                    = "example-vpc"
  auto_create_subnetworks = true 
}
