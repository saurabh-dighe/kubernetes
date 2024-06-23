module "eks" {
  source             = "./vendor/modules/eks"
  ENV                = var.ENV
  PRIVATE_SUBNET_IDS = ["subnet-0e86d5abb71959897", "subnet-06c85d0801d6571a9"] #data.terraform_remote_state.vpc.outputs.PRIVATE_SUBNET_IDS
  PUBLIC_SUBNET_IDS  = ["subnet-09f0236c4b3694cb9", "subnet-0cd3ab59c9c3879f6"] #data.terraform_remote_state.vpc.outputs.PUBLIC_SUBNET_IDS
  DESIRED_SIZE       = 1
  MAX_SIZE           = 1
  MIN_SIZE           = 1
}