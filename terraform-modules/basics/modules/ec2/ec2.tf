resource "aws_instance" "demo_instance" {
  ami = "ami-05c0f5389589545b7"
  instance_type = "${var.instance_type}"
}
