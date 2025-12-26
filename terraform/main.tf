
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
