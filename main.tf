module "network" {
  source             = "./modules/network"
  app_name           = var.app_name
  peering_ip_range   = var.peering_ip_range
  connector_ip_range = var.connector_ip_range
}

module "cloud_sql" {
  source        = "./modules/cloud_sql"
  app_name      = var.app_name
  db_user       = var.db_user
  db_password   = var.db_password
  vpc_self_link = module.network.vpc_self_link
}
