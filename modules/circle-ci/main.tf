resource "circleci_context" "build" {
  name      = var.circleci_context_name
   provider = circleci.ci

}



variable "circleci_context_name" {
    type = string
    description = "circle ci context name"
    #default = "sdcsc"
}

