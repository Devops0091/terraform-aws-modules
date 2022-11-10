module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
}


module "context" {
    source = "./modules/circle-ci"
    circleci_context_name = "circleci_context"

}

