resource "google_compute_network" "vpc_network" {
name = "commercetools-vpc"
}

resource "google_compute_subnetwork" "public-subnetwork" {
name          = "public-subnetwork"
ip_cidr_range = "10.2.0.0/16"
region        = "us-central1"
network       = google_compute_network.public_network.name
}

resource "google_compute_subnetwork" "private-subnetwork" {
name                     = "private-subnetwork"
ip_cidr_range            = "10.1.0.0/16"
region                   = "us-central1"
network                  = google_compute_network.private_network.name
private_ip_google_access = true
}
