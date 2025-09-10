resource "google_compute_instance" "localvm" {
  name = var.all[2]
  zone = var.all[1]
  machine_type = var.all[0]
  boot_disk {
    initialize_params {
      image = var.all[5]
    }
  }
  network_interface {
    network = "default"
  }
}

