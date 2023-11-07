resource "google_compute_instance" "default" {
  name         = "test-from-terraform"
  machine_type = "e2-medium"
  zone         = "us-central1-a"

  tags = ["ssh"]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    subnetwork         = var.subnet
    subnetwork_project = var.host_project


    access_config {
      // Ephemeral public IP
    }
  }
}