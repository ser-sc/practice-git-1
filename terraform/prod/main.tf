terraform {
  # Версия terraform
  required_version = "0.14.4"
}
provider "google" {
  # Версия провайдера
  version = "3.51.1"
  # ID проекта
  project = var.project
  region  = var.region
}

module "app" {
  source = "../modules/app"
  #public_key_path = "${var.public_key_path}"
  zone           = var.zone
  app_disk_image = var.app_disk_image
}
module "db" {
  source = "../modules/db"
  #public_key_path = "${var.public_key_path}"
  zone          = var.zone
  db_disk_image = var.db_disk_image
}
module "vpc" {
  source        = "../modules/vpc"
  source_ranges = ["10.132.0.0/24"]
}
