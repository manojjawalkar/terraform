resource "aws_instance" "second_demo_ec2" {
  ami = "ami-05c0f5389589545b7"
  instance_type = "t2.micro"
  key_name = "first_EC2_key_pair"
  vpc_security_group_ids = ["${aws_security_group.demo02.id}"]
  tags = {
    Name = "udemy_01"
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