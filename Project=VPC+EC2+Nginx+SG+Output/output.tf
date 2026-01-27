output "Nginxserver-ip" {
  value = aws_instance.Nginxserver.public_ip
}
output "Nginxserver-url" {
  value = "http://${aws_instance.Nginxserver.public_ip}"
}