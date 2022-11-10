module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
}


module "context" {
    source = "./modules/circle-ci"
    circleci_context_name = "circleci_context"
providers "circleci" {
  # Configuration options
  alias = "ci"
  api_token = "8daab594c8bb58e6e3aee9c2d0909fbf77972037"
  vcs_type     = "github"
  organization = "ankush0991"
  }
}

