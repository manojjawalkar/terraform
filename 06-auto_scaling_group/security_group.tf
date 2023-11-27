resource "aws_security_group" "demo_output" {
  ingress {
    from_port = var.http_port
    to_port = var.http_port
    protocol = "tcp"
    cidr_blocks = ["${var.cidr_blocks}"]
    # To check the IP use below command
    # % curl https://checkip.amazonaws.com
    # 129.41.59.5
  }
  ingress {
    from_port = var.ssh_port
    to_port = var.ssh_port
    protocol = "tcp"
    cidr_blocks = ["${var.cidr_blocks}"]
  }
  egress {
    from_port = 0
    to_port = 0
    protocol = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}