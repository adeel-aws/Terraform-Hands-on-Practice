variable "region" {
  default = "us-east-1"
}

variable "vpc_cidr" {
  default = "10.0.0.0/16"
}

variable "instance_type" {
    default = "t3.micro"
  
}

variable "ami" {
  default = "ami-0532be01f26a3de55"
}