resource "aws_launch_configuration" "tf_launch_configuration" {
      name = "tf_web_server_launch"
      image_id = "${var.aws_ami}"
      instance_type = "${var.aws_instance_type}"
      security_groups = "${aws_security_group.demo_output.id}"
      key_name = "${var.aws_instance_key_name}"
      user_data = <<EOF
        #!/bin/bash
        # Install httpd (Linux 2 version)
        yum update -y
        yum install -y httpd
        systemctl start httpd
        systemctl enable httpd
        echo "<h1>Hello World from $(hostname -f)</h1>" > /var/www/html/index.html
      EOF
}