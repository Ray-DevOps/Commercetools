module "gke" {
  source            = "terraform-google-modules/kubernetes-engine/google//modules/private-cluster"
  name              = "commerce-tools-cluster"
  regional          = false
  region            = "us-central1"
  zones             = ["us-central1-c"]
  network           = "commercetools-vpc"
  subnetwork        = "private-subnetwork
  ip_range_pods     = "10.1.48.0/20"
  ip_range_services = "10.1.64.0/20"
  node_pools = [
    {
      name           = "node-pool"
      machine_type   = "n2-standard-2"
      node_locations = "us-central1-c"
      min_count      = 1
      max_count      = 2
      disk_size_gb   = 10
      preemptible    = false
      auto_repair    = false
      auto_upgrade   = true
    },
  ]
}
