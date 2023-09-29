resource "google_compute_network" "this" {
  name                    = "${var.app_name}-vpc"
  routing_mode            = "REGIONAL"
  auto_create_subnetworks = false
}

resource "google_compute_global_address" "this" {
  name          = "${var.app_name}-private-ip-block"
  purpose       = "VPC_PEERING"
  address_type  = "INTERNAL"
  ip_version    = "IPV4"
  address       = var.peering_ip_range
  prefix_length = 16
  network       = google_compute_network.this.self_link
}

resource "google_service_networking_connection" "this" {
  network                 = google_compute_network.this.self_link
  service                 = "servicenetworking.googleapis.com"
  reserved_peering_ranges = [google_compute_global_address.this.name]
}

resource "google_vpc_access_connector" "this" {
  name          = "${var.app_name}-connector"
  network       = google_compute_network.this.name
  ip_cidr_range = "${var.connector_ip_range}/28"
}