terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.9.0"
    }
  }

  backend "remote" {
    hostname     = "app.terraform.io"
    organization = "surge-hub"
    workspaces {
      prefix = "par-"
    }
  }
  required_version = ">= 1.5.0"
}