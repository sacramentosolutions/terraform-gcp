resource "google_compute_network" "globalvpc" {
   name = "teamGCP-vpc"
   auto_create_subnetworks = "true"
   routing_mode = "GLOBAL"
}