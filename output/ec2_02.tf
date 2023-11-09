resource "aws_instance" "web_server" {
  ami = "${var.aws_ami}"
  instance_type = "${var.aws_instance_type}"
  key_name = "first_EC2_key_pair"
  vpc_security_group_ids = ["${aws_security_group.demo_output.id}"]
  count = 2
  tags = {
    // adding 1 to count.index because indexing starts with 0. And I want my EC2s to start with 1
    Name = "using_count_${count.index + 1}"
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