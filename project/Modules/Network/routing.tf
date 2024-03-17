resource "aws_route_table" "pubsubroute" {
  vpc_id = aws_vpc.network.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.gw.id
  }

  tags = {
    Name = "routetable"
  }
}

resource "aws_route_table_association" "pubsubassociate" {
  subnet_id =  aws_subnet.Publicsubnet.id
  route_table_id = aws_route_table.pubsubroute.id
}