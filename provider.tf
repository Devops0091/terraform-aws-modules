

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
   assume_role {
    role_arn = "arn:aws:iam::915872208696:role/OrganizationAccountAccessRole"
  }
}

provider "circleci" {
  # Configuration options
  alias = "ci"
  api_token = "96442095e8001a117a2a1674a163ecebbab9d049"
  vcs_type     = "github"
  organization = "8daab594c8bb58e6e3aee9c2d0909fbf77972037"
  }