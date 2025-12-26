
provider "aws" {
  region = var.aws_region
}

data "aws_availability_zones" "available" {}

module "vpc" {
  source        = "../modules/vpc"
  vpc_cidr      = var.vpc_cidr
  public_subnets  = var.public_subnets
  private_subnets = var.private_subnets
}
module "ec2" {
  source           = "../modules/ec2"
  ec2_instance_type = var.ec2_instance_type
  subnet_id        = module.vpc.public_subnet_ids[0]
}
module "rds" {
  source            = "../modules/rds"
  rds_instance_type  = var.rds_instance_type
  private_subnets    = module.vpc.private_subnet_ids
  db_name            = "mydb"
  db_username        = "admin"
  db_password        = "Password123!"
  security_group_ids = []
}


