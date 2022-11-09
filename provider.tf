

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
   assume_role {
    role_arn = "arn:aws:iam::915872208696:role/OrganizationAccountAccessRole"
  }
}

provider "circleci" {
  # Configuration options
}