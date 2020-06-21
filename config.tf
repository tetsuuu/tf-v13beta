provider "aws" {
  region  = "us-east-1"
  version = "~> 2.67.0"
}

provider "sops" {}

data "sops_file" "demo_credential" {
  source_file = "credential.yml"
}

data "aws_caller_identity" "self" {}
