resource "aws_vpc" "my-vpc" {
  cidr_block = var.vpc-cidr_block
  tags = {
    Name = "My-VPC"
  }
}
resource "aws_subnet" "public-subnet1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.public-subnet1-cidr_block
  availability_zone = var.Availability-zone1
  tags = {
    Name = "Public-Subnet1"
  }
}

resource "aws_subnet" "public-subnet2" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.public-subnet2-cidr_block
  availability_zone = var.Availability-zone2
  tags = {
    Name = "Public-Subnet2"
  }
}

resource "aws_subnet" "private-subnet1" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.private-subnet1-cidr_block
  availability_zone = var.Availability-zone1
  tags = {
    Name = "Private-Subnet1"
  }
}

resource "aws_subnet" "private-subnet2" {
  vpc_id = aws_vpc.my-vpc.id
  cidr_block = var.private-subnet2-cidr_block
  availability_zone = var.Availability-zone2
  tags = {
    Name = "Private-Subnet2"
  }
}

resource "aws_internet_gateway" "my-igw" {
  vpc_id = aws_vpc.my-vpc.id
  tags = {
    Name = "My-IGW"
  }
}

resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.my-vpc.id

    route {
        cidr_block = "0.0.0.0/0"
        gateway_id = aws_internet_gateway.my-igw.id
    }
    tags = {
      Name = "Public-rt"
    }
}

resource "aws_route_table_association" "public1" {
  subnet_id      = aws_subnet.public-subnet1.id
  route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "public2" {
  subnet_id      = aws_subnet.public-subnet2.id
  route_table_id = aws_route_table.public-rt.id
}

