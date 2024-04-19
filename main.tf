terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "4.51.0"
    }
  }
}

provider "google" {
  project = "proven-answer-415913"
  region = "us-west2"
}

resource "google_sql_database_instance" "main" {
  name             = "cmain-instance"
  database_version = "POSTGRES_15"
  region           = "us-west2"
  settings {
    tier = "db-f1-micro"
  }
}