/*
module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = "10.0.0.0/16"
}




resource "circleci_context" "build" {
  name      = var.circleci_context_name


}



variable "circleci_context_name" {
    type = string
    description = "circle ci context name"
    default = "sdcsc"
}


*/

module "circleci_context" {
    source = "./modules/circle-ci"
    circleci_context_name = "circleci_context"


}




resource "circleci_context" "build" {
  name      = var.circleci_context_name


}
