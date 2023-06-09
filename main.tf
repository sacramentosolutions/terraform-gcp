provider "google" {
  credentials = file(var.google_credentials_file)
  project     = var.google_project_id
  region      = var.google_region
}

resource "google_compute_instance" "vm_instance" {
  name         = "my-vm-instance"
  machine_type = "n1-standard-1"
  zone         = var.google_zone

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-10"
    }
  }

  network_interface {
    network = "default"
    access_config {}
  }
}
