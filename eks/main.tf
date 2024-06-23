module "eks" {
  source             = "./vendor/modules/eks"
  ENV                = var.ENV
  PRIVATE_SUBNET_IDS = data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS #["subnet-0dbf40ba94ccc319e", "subnet-06c85d0801d6571a9"] 
  PUBLIC_SUBNET_IDS  = data.terraform_remote_state.vpc.outputs.PUBLIC_SUBNET_IDS #["subnet-09f0236c4b3694cb9", "subnet-0cd3ab59c9c3879f6"] 
  DESIRED_SIZE       = 1
  MAX_SIZE           = 1
  MIN_SIZE           = 1
}