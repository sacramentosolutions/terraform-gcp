variable "google_credentials_file" {
  description = "/Users/diego/downloads/terraform-389622-db158e2414dd.json"
  
}

variable "google_project_id" {
  description = "Google Cloud Project ID"
   default     = "terraform-389622"
}
variable "config" {
	type = map(any)
	default = {
		name = "team3-db-instance"
		region = "us-east1"
		tier = "db-f1-micro"
		deletion_protection = "false"
		database_version = "MYSQL_5_6"
	}
}
