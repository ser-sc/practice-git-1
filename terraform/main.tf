
terraform {
  # Версия terraform
  required_version = "0.14.4"
}
provider "google" {
  # Версия провайдера
  version = "3.51.0"
  # ID проекта
  project = "${var.project}"
  region  = "${var.region}"
}
resource "google_compute_instance" "app" {
  name         = "reddit-app"
  machine_type = "g1-small"
  zone         = "europe-west1-b"
  boot_disk {
    initialize_params {
      image = "${var.disk_image}"
    }
  }
  #metadata {
  #ssh-keys = "appuser:${file("~/.ssh/root.pub")}"
  #}
  tags = ["reddit-app"]
  network_interface {
    network = "default"
    access_config {}
  }

  #connection {
  #type = "ssh"
  #user = "root"
  #agent = false
  #private_key = "${file("~/.ssh/id_rsa.pub")}"
  #}


  provisioner "file" {
    source      = "files/puma.service"
    destination = "/tmp/puma.service"
  }
  provisioner "remote-exec" {
    script = "files/deploy.sh"
  }
}
