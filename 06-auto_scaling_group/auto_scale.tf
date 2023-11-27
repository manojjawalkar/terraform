resource "aws_autoscaling_group" "tf_ASG" {
    min_size = 2
    max_size = 5
    desired_capacity = 2
    availability_zones = "${var.azs}"
    launch_configuration = "${aws_launch_configuration.tf_launch_configuration.id}"
    tag {
      key = "Name"
      value = "tf_ASG_example"
      propagate_at_launch = true
    }

      
}