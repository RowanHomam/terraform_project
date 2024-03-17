resource "aws_instance" "ec2" {

  ami           = var.ec2_image
  instance_type = "t2.micro"
  subnet_id = var.subnet_assigned
  security_groups = [ var.secgrp_assigned ]

  tags = {
    Name = var.ec2_name
  }
}