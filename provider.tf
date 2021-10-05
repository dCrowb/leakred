provider "google" {
  credentials = file("/home/crow/.terraform.d/credentials.tfrc.json")
  project     = "leakred"
  region      = var.region
  zone        = var.zone
}

