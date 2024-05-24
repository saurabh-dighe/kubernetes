 
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "b57-tf-state-bucket"
    key     = "${var.ENV}/vpc/terraform.tfstate"
    region  = "us-east-1"
  }
}