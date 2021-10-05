resource "google_compute_instance" "default" {
  name         = var.vm_list[count.index]
  machine_type = "e2-micro"
  zone         = var.zone
  count        = length(var.vm_list)
  tags         = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

