resource "aws_instance" "web" {
  ami           = "ami-0c02fb55956c7d316"  # Ubuntu 22.04 LTS in eu-west-2
  instance_type = var.ec2_instance_type
  subnet_id     = var.subnet_id
  associate_public_ip_address = true

  tags = {
    Name = "varun-ec2-web"
  }
}

