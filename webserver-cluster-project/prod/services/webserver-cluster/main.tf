provider "aws" {
  region = "us-east-2"
}

module "webseerver_cluster" {
  source = "../../../modules/services/webserver-cluster"

  cluster_name = "webservers-prod"
  db_remote_state_bucket = "terraform-up-and-running-state-brp20200214"
  db_remote_state_key = "prod/datastores/mysql/terraform.tfstate"
}
