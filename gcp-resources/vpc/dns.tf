resource "google_dns_managed_zone" "commercetools-gcp" {
  name        = "commercetools-gcp"
  dns_name    = "gcp.commercetools.com."
  description = "DNS for commercetools in GCP cloud"
}


