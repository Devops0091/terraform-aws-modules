module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
}

/*
module "circleci_context" {
    source = "./modules/circle-ci"
    circleci_context_name = "circleci_context"

    providers = {
       circleci = circleci.ci
  }
}


resource "circleci_context" "build" {
  name      = var.circleci_context_name
   provider = circleci.ci

}



variable "circleci_context_name" {
    type = string
    description = "circle ci context name"
    default = "sdcsc"
}


*/