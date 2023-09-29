module "network" {
  source   = "./modules/network"
  app_name = var.app_name
}

module "cloud_sql" {
  source        = "./modules/cloud_sql"
  app_name      = var.app_name
  db_user       = var.db_user
  db_password   = var.db_password
  vpc_self_link = module.network.vpc_self_link
}
