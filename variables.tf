variable "region" {
  description = "Region"
  default     = "europe-west4"
}

variable "zone" {
  description = "Zone"
  default     = "europe-west4-a"
}

variable "image" {
  description = "centos 8"
  default     = "centos-cloud/centos-8"
}

variable "machine_type" {
  description = "machine type"
  default     = "e2-micro"
}

variable "vm_list" {
  description = "List vm name"
  default     = ["test1", "test2", "test3", "test4", "test5"]
}
