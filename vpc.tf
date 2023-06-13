provider "google" {
  credentials = file("/Users/diego/downloads/terraform-389622-db158e2414dd.json")
  project     = "1036069354795"
  region      = "us-west1-a"
}

resource "google_compute_network" "globalvpc" {
  name                    = "teamgcp-vpc"
  auto_create_subnetworks = true
  routing_mode            = "GLOBAL"
}

