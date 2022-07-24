terraform {
  required_providers {
    mikrotik = {
      source  = "ddelnano/mikrotik"
      version = "0.9.1"
    }
  }

}

provider "mikrotik" {
  host     = var.mikrotik_host
  username = var.mikrotik_username
  password = var.mikrotik_password
  tls      = false
  insecure = true
}
