module "eks" {
  source             = "./vendor/modules/eks"
  ENV                = var.ENV
  PRIVATE_SUBNET_IDS = ["subnet-0afe115d8c47794db", "subnet-0802192242ca916a1"] #data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS
  PUBLIC_SUBNET_IDS  = ["subnet-0afe115d8c47794db", "subnet-0802192242ca916a1"] #data.terraform_remote_state.vpc.outputs.PUBLIC_SUBNET_IDS
  DESIRED_SIZE       = 1
  MAX_SIZE           = 1
  MIN_SIZE           = 1
}