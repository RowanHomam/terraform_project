variable "ami" {
  description = "ec2 image"
  type        = string
}

variable "tag" {
  description = "ec2 name"
  type        = string
}

variable "s3_name" {
  description = "s3 bucket name"
  type        = string
}

variable "db_name" {
  description = "dynamobd table name"
  type        = string
}

variable "hashkey" {

  description = "dynamodb hash key"
  type        = string

}

variable "hashtype" {

  description = "hash key type"
  type        = string
}

variable "region" {
  type = string
}

variable "net" {
  type = string
}