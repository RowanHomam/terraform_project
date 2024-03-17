resource "aws_subnet" "Publicsubnet" {
  vpc_id     = aws_vpc.network.id
  cidr_block = "10.0.1.0/24"
#   availability_zone = "us-east-1a"
  tags = {
    Name = "Pub_subnet"
  }
}

output "subnetid" {
   value =   aws_subnet.Publicsubnet.id
}