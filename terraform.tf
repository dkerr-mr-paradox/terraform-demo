terraform {
  # backend "cloud" {}
  # backend "gcs" {
  #   bucket = "dk-58qmq-bucket"
  #   prefix = "terraform/state"
  # }
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "5.5.0"
    }
  }
}

provider "google" {
  project = var.project_id
}