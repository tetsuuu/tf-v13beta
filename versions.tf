terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
    }
    sops = {
      source = "carlpett/sops"
      version = "0.5.1"
    }
  }
  required_version = ">= 0.13"
}
