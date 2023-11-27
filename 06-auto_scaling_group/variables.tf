variable "region" {
  default = "ap-south-1"
}

variable "http_port" {
  default = 80
}

variable "ssh_port" {
  default = 22
}
variable "cidr_blocks" {
  default = "103.197.75.21/32"
}
variable "aws_ami" {
    default = "ami-05c0f5389589545b7"  
}
variable "aws_instance_type" {
    default = "t2.micro"  
}
variable "aws_instance_key_name" {
    default = "first_EC2_key_pair"
}
variable "azs" {
  
}