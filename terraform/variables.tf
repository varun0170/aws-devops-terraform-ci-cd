# AWS Region
variable "aws_region" {
  description = "AWS region to deploy resources"
  type        = string
  default     = "eu-west-2"
}

# VPC Configuration
variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

# Public Subnets
variable "public_subnets" {
  description = "CIDR blocks for public subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

# Private Subnets
variable "private_subnets" {
  description = "CIDR blocks for private subnets"
  type        = list(string)
  default     = ["10.0.3.0/24", "10.0.4.0/24"]
}

# EC2 Instance Type
variable "ec2_instance_type" {
  description = "Type of EC2 instance"
  type        = string
  default     = "t3.micro"
}

# RDS Configuration
variable "rds_instance_type" {
  description = "Type of RDS instance"
  type        = string
  default     = "db.t3.micro"
}

