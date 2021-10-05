provider "google" {
  credentials = file("/home/crow/.terraform.d/credentials.tfrc.json")
  project     = "solid-idiom-327007"
  region      = var.region
  zone        = var.zone
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = var.zone
  count        = 5
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

