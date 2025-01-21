provider "aws" {
  region = var.region
}

resource "aws_instance" "microservice" {
  ami                         = var.ami_id
  instance_type               = var.instance_type
  key_name                    = aws_key_pair.main.key_name
  vpc_security_group_ids      = [aws_security_group.main.id]
  subnet_id                   = aws_subnet.main.id
  associate_public_ip_address = true

  tags = {
    Name = "MicroserviceInstance"
  }
  user_data = file("${path.module}/ec2/user_data.sh")
}

module "ami" {
  source             = "./ami"
  region             = var.region
  source_instance_id = aws_instance.microservice.id
  ami_name           = var.ami_name
  ami_description    = var.ami_description
  tags               = var.tags
}

