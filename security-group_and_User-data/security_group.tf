resource "aws_security_group" "demo02" {
  ingress {
    from_port = 80
    to_port = 80
    protocol = "tcp"
    cidr_blocks = ["129.41.59.5/32"]
    # To check the IP use below command
    # % curl https://checkip.amazonaws.com
    # 129.41.59.5
  }
  ingress {
    from_port = 22
    to_port = 22
    protocol = "tcp"
    cidr_blocks = ["129.41.59.5/32"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}