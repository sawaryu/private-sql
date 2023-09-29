output "vpc_self_link" {
  value       = google_compute_network.this.self_link
  description = "vpc self link"
}

output "vpc_access_connector_name" {
  value       = google_vpc_access_connector.this.name
  description = "vpc access connector name"
}