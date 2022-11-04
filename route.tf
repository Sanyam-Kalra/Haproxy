#ROUTETABLE

resource "aws_route_table" "publicrt1" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.igw.id
  }

  tags = var.rt_tags
}

#ROUTEASSOCIATION

resource "aws_route_table_association" "association" {
  subnet_id      = aws_subnet.public1.id
  route_table_id = aws_route_table.publicrt1.id
}


#ROUTETABLE PRIVATE

resource "aws_route_table" "privatert" {
  vpc_id = aws_vpc.main.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_nat_gateway.nat.id
  }

  tags = var.rt_tags_pvt
}

#ROUTEASSOCIATION PRIVATE

resource "aws_route_table_association" "association1" {
  subnet_id      = aws_subnet.private1.id
  route_table_id = aws_route_table.privatert.id
}

resource "aws_route_table_association" "association2" {
  subnet_id      = aws_subnet.private2.id
  route_table_id = aws_route_table.privatert.id
}