variable "resource" {
  description = "Resource"
  default     = "google_compute_instance app"
}

#variable app {
#description = "App"
#default = app
#}

variable "project" {
  description = "Project ID"
}
variable "region" {
  description = "Region"
  # Значение по умолчанию
  default = "europe-west1"
}
#variable public_key_path {
# Описание переменной
#description = "Path to the public key used for ssh access"
#}
variable "disk_image" {
  description = "Disk image"
}

variable "app_disk_image" {
  description = "Disk image for reddit app"
  default     = "reddit-base"
}

variable "db_disk_image" {
  description = "Disk image for reddit db"
  default     = "mongodb-base"
}

variable "zone" {
  description = "Zone"
  default     = "europe-west1-b"
}
