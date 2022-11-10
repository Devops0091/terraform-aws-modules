

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
  organization = "a111b7df-271e-4ba3-b329-032d859e4968"
  }