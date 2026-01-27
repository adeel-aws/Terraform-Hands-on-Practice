# Creates two ec2-instances, one with ubuntu and other with amazon linux, and both instances are 
# different subnets which will be created before the ec2-instances
provider "aws" {
  region = var.region
}

locals {
  project = "project-1"

  # Define subnets with meaningful names and CIDRs
  subnets = {
    public  = "10.0.0.0/24"
    private = "10.0.1.0/24"
  }
}

# Create VPC
resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${local.project}-VPC"
  }
}

# Create subnets using for_each
resource "aws_subnet" "my_subnets" {
  for_each = local.subnets

  vpc_id     = aws_vpc.my_vpc.id
  cidr_block = each.value

  tags = {
    Name = "${local.project}-${each.key}-subnet"
  }
}

resource "aws_instance" "instance" {
  for_each = var.ec2_map

  ami           = each.value.ami
  instance_type = each.value.instance_type

  subnet_id = aws_subnet.my_subnets[each.value.subnet_key].id

  tags = {
    Name = "${local.project}-${each.key}-instance"
  }
}
