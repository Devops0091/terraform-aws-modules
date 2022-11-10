resource "circleci_context" "build" {
  name  = var.circleci_context_name
   provider = circleci.ci

}
