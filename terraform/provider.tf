terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.21"
    }
  }
}
provider "aws" {
  profile = "terraform"
  region  = "us-east-1"
}
