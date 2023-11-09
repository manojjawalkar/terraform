resource "aws_instance" "second_demo_ec2" {
  ami = "${var.aws_ami}"
  instance_type = "${var.aws_instance_type}"
  key_name = "first_EC2_key_pair"
  vpc_security_group_ids = ["${aws_security_group.demo02.id}"]
  count = 3
  tags = {
    Name = "using_count_${count.index}"
  }
  user_data = <<-EOF
    #!/bin/bash
    # Install httpd (Linux 2 version)
    yum update -y
    yum install -y httpd
    systemctl start httpd
    systemctl enable httpd
    echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
  EOF

}
