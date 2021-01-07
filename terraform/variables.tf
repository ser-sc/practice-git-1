variable resource {
description = "Resource"
default = "google_compute_instance app"
}

#variable app {
#description = "App"
#default = app
#}

variable project {
description = "Project ID"
}
variable region {
description = "Region"
# Значение по умолчанию
default = "europe-west1"
}
#variable public_key_path {
# Описание переменной
#description = "Path to the public key used for ssh access"
#}
variable disk_image {
description = "Disk image"
}
