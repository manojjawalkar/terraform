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
  default = "129.41.59.5/32"
}
variable "aws_ami" {
    default = "ami-05c0f5389589545b7"  
}
variable "aws_instance_type" {
    default = "t2.micro"  
}