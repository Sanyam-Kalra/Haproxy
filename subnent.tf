resource "aws_subnet" "public1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr
  availability_zone = var.az1
  tags              = var.subnet_tags
}

## Private subnet
resource "aws_subnet" "private1" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_private1
  availability_zone = var.az2
  tags              = var.subnet_tags_pvt
}

resource "aws_subnet" "private2" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = var.subnet_cidr_private2
  availability_zone = var.az1
  tags              = var.subnet_tags_pvt
}