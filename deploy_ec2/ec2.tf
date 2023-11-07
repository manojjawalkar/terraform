resource "aws_instance" "first_demo_ec2" {
  ami = "ami-05c0f5389589545b7"
  instance_type = "t2.micro"
  key_name = "first_EC2_key_pair"
  security_groups = [ "launch-wizard-1" ]
  tags = {
    Name = "udemy_01"
  }
}
