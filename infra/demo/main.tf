terraform {
  required_providers {
    random = {
      source  = "hashicorp/random"
      version = "~> 3.6"
    }
  }
}
provider "random" {}

resource "random_id" "example" {
  byte_length = 4
}

output "hex" { value = random_id.example.hex }
