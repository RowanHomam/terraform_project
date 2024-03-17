variable "ec2_image" {
    description = "ec2 image"
    type = string
}

variable "ec2_name" {
    description = "ec2 name"
    type = string 
}

variable "subnet_assigned" {

    description = "subnet id"
    type = string
  
}

variable "secgrp_assigned" {

    description = "security group"
    type = string
  
}