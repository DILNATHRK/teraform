variable "resource_group_name" {
  default = "myTFResourceGroup"
}

variable "location" {
  default = "westus2"
}

variable "admin_username" {
  description = "Admin username for the VM"
  type        = string
}

variable "admin_password" {
  description = "Admin password for the VM"
  type        = string
  sensitive   = true
}
