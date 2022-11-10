terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
    circleci = {
      source = "mrolla/circleci"
      version = "0.6.1"
    }
  }
}