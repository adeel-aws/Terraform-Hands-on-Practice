variable "ec2_map" {
  type = map(object({
    ami           = string
    instance_type = string
    subnet_key    = string
  }))
}

variable "region" {
  default = "us-east-1"
}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}