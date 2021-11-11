terraform {
  required_version = ">= 0.12" # colocando compatibilidade do terraform para 0.12
}
provider "aws" {
  region = "sa-east-1"
}

resource "aws_instance" "bira01" {
 subnet_id                   = "subnet-08d1dcb60f40fe297"
  ami                         = "ami-0e66f5495b4efdd0f"
  instance_type               = "t2.micro"
  associate_public_ip_address = true
  root_block_device {
    encrypted   = true
    volume_size = 8
  tags = {
    Name = "${var.nome}",
    Itau = true
    }
  }
}