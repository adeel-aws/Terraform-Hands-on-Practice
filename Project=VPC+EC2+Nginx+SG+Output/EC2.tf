resource "aws_instance" "Nginxserver" {
  ami                    = var.ami
  instance_type          = var.instance-type
  subnet_id              = aws_subnet.public-subnet1.id
  vpc_security_group_ids = [aws_security_group.nginx-sg.id]
  associate_public_ip_address = true

  user_data = <<-EOF
             #!/bin/Bash
             sudo dnf install nginx -y
             sudo systemctl start nginx
             sudo systemctl enable nginx
            EOF

  tags = {
    Name = "Nginxserver"
  }
}