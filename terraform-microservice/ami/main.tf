provider "aws" {
  region = var.region
}

data "aws_instance" "example" {
  instance_id = var.source_instance_id
}

resource "aws_ami_from_instance" "example" {
  name                  = var.ami_name
  description           = var.ami_description
  source_instance_id    = data.aws_instance.example.id
  snapshot_without_reboot = true

  tags = {
    Name = var.ami_name
  }
}

