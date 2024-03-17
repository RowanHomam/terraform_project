module "ec2" {
  source          = "../Modules/EC2"
  ec2_image       = var.ami
  ec2_name        = join("-", [var.tag, var.region])
  subnet_assigned = module.Network.subnetid
  secgrp_assigned = module.Network.secgrp
}

module "S3" {
  source      = "../Modules/S3"
  bucket_name = join("-", [var.s3_name, var.region])
}

module "Dynamodb" {
  source    = "../Modules/DynamoDB"
  tablename = var.db_name
  hkey      = var.hashkey
  htype     = var.hashtype
}

module "Network" {
  source  = "../Modules/Network"
  netname = join("-", [var.net, var.region])
}




