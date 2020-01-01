provider "google" {
  credentials = file("credentials.json")

  project = "breuninger-playground-dasc"
  region  = "us-central-1"
  zone    = "us-central1-c"
}

resource "google_compute_instance" "example" {
  name         = "compute-instance-example"
  machine_type = "n1-standard-1"

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian9"
    }
  }

  network_interface {
    network = "default"

    access_config {
      // ephemeral ip
    }
  }
}
