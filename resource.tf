resource "google_compute_instance" "default" {
  name         = var.vm_list[count.index]
  machine_type = var.machine_type
  zone         = var.zone
  count        = length(var.vm_list)
  tags         = ["crow", "k8s"]

  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  metadata = {
    ssh-keys = "crow:${file("~/.ssh/id_rsa.pub")}"
  }
  metadata_startup_script = file("./start.sh")

  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}
