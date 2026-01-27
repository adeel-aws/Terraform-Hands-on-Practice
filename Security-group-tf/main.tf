
# Security group allowing port 80 and 22 from all

resource "aws_security_group" "nginx-sg" {
  vpc_id = aws_vpc.my-vpc.id

  ingress {
    from_port = 80
    to_port   = 80
    protocol  = "tcp"
    cidr_blocks = var.cidr_block_SG
  }

   ingress {
    from_port = 22
    to_port   = 22
    protocol  = "tcp"
    cidr_blocks = var.cidr_block_SG
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}