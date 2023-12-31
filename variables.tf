variable "project_id" {
  description = "project id"
  type        = string
}

variable "db_user" {
  description = "db user name"
  type        = string
  sensitive   = true
}

variable "db_password" {
  description = "db user name"
  type        = string
  sensitive   = true
}

variable "peering_ip_range" {
  description = "ip range for peering"
  type        = string
  sensitive   = true

}
variable "connector_ip_range" {
  description = "ip range for connector"
  type        = string
  sensitive   = true
}

variable "app_name" {
  description = "app name which is used for prefix of resources"
  type        = string
  default     = "private-sql"
}

variable "region" {
  description = "region"
  type        = string
  default     = "asia-northeast1"
}