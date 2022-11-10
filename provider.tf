

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
   assume_role {
    role_arn = "arn:aws:iam::915872208696:role/OrganizationAccountAccessRole"
  }
}
/*
provider "circleci" {
  # Configuration options
  alias = "ci"
  api_token = "8daab594c8bb58e6e3aee9c2d0909fbf77972037"
  vcs_type     = "github"
  organization = "ankush0991"
  }

  */