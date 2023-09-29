variable "app_name" {
  description = "app name which is used for prefix of resources"
  type        = string
}

variable "vpc_self_link" {
  description = "vpc self link"
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
