terraform {
  required_version = "1.5.7"
  
  required_providers {
    google = {
      credentials = file("CREDENTIALS_FILE.json")
      project     = "my-project-id"
      region      = "us-central1"
    }

  backend "gcs" {
    bucket  = "tf-state-commercetools"
    prefix  = "commercetools/state"
    }
  }
}
