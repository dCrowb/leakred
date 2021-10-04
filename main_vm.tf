provider "google" {
  credentials = file("/home/crow/.terraform.d/credentials.tfrc.json")
  project     = "solid-idiom-327007"
  region      = "europe-west4"
  zone        = "europe-west4-a"
}

resource "google_compute_instance" "default" {
  name         = "test"
  machine_type = "e2-micro"
  zone         = "europe-west4-a"

  tags = ["foo", "bar"]

  boot_disk {
    initialize_params {
      image = "centos-cloud/centos-8"
    }
  }
  network_interface {
    network = "default"

    access_config {
      // Ephemeral public IP
    }
  }
}

