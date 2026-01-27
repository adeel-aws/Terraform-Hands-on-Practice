variable "region" {
  default = "us-east-1"
}
variable "vpc-cidr_block" {
  default = "10.0.0.0/16"
}
variable "public-subnet1-cidr_block" {
  default = "10.0.1.0/24"
}
variable "public-subnet2-cidr_block" {
  default = "10.0.2.0/24"
}
variable "private-subnet1-cidr_block" {
  default = "10.0.3.0/24"
}
variable "private-subnet2-cidr_block" {
  default = "10.0.4.0/24"
}
variable "Availability-zone1" {
  default = "us-east-1a"
}
variable "Availability-zone2" {
  default = "us-east-1b"
}