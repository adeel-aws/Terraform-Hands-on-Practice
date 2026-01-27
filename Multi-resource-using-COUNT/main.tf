provider "aws" {
  region = var.region
}

locals {
  project = "project-1"
}

resource "aws_vpc" "my_vpc" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${local.project}-VPC"
  }
}

# Create two subnets using count 

resource "aws_subnet" "my_subnets" {
  vpc_id = aws_vpc.my_vpc.id
  cidr_block = "10.0.${count.index}.0/24"
  count = 2
  tags = {
    Name = "${local.project}-subnet-${count.index}"
  }

}

# # For its output we will use a term

# output "subnet-id" {
#   value = aws_subnet.main{0 or 1}.id
# }

resource "aws_instance" "main" {
  count = 4  # number of EC2 instances you want to create

  ami           = var.ami
  instance_type = var.instance_type

  subnet_id = element(
    aws_subnet.my_subnets[*].id,
    count.index % length(aws_subnet.my_subnets[*].id)
  )

  tags = {
    Name = "${local.project}-instance-${count.index}"
  }
}
