resource "google_sql_database_instance" "this" {
  name             = "${var.app_name}-db-instance"
  database_version = "MYSQL_5_7"

  settings {
    tier              = "db-f1-micro"
    availability_type = "ZONAL"
    disk_size         = 10

    ip_configuration {
      ipv4_enabled    = false
      private_network = var.vpc_self_link
    }
  }

  deletion_protection = true
}

resource "google_sql_database" "this" {
  name     = "${var.app_name}-db"
  instance = google_sql_database_instance.this.name
}

resource "google_sql_user" "this" {
  name     = var.db_user
  password = var.db_password

  instance = google_sql_database_instance.this.name
}

