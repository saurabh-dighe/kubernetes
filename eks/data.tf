 
data "terraform_remote_state" "vpc" {
  backend = "s3"
  config = {
    bucket  = "saurabh-bucket-tf1"
    key     = "${var.ENV}/tf-vpc/terraform.tfstate"
    region  = "us-east-1"
  }
}
