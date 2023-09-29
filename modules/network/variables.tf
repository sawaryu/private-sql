variable "app_name" {
  description = "app name which is used for prefix of resources"
  type        = string
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