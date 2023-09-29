output "db_name" {
  value       = google_sql_database.this.name
  description = "database name"
}

output "db_private_ip_address" {
  value       = google_sql_database_instance.this.private_ip_address
  description = "database private ip address"
}