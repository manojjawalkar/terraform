output "public_ips" {
  value = [aws_autoscaling_group.tf_ASG.arn]
}
