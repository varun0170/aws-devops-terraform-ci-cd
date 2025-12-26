resource "aws_db_subnet_group" "this" {
  name       = "varun-rds-subnet-group"
  subnet_ids = var.private_subnets

  tags = {
    Name = "varun-rds-subnet-group"
  }
}

resource "aws_db_instance" "this" {
  allocated_storage    = 20
  engine               = "postgres"
  engine_version       = "15.3"
  instance_class       = var.rds_instance_type
  name                 = var.db_name
  username             = var.db_username
  password             = var.db_password
  db_subnet_group_name = aws_db_subnet_group.this.name
  vpc_security_group_ids = var.security_group_ids
  skip_final_snapshot  = true

  tags = {
    Name = "varun-rds-instance"
  }
}

