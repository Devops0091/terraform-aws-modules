resource "circleci_context" "build" {
  name      = var.circleci_context_name
 #  provider = circleci.ci

}



variable "circleci_context_name" {
    type = string
    description = "circle ci context name"
    #default = "sdcsc"
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