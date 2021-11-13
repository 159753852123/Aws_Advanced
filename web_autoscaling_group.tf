#creating AutoScaling Group

resource "aws_autoscaling_group" "web_asg" {
  name              = "web_asg"
  target_group_arns = [aws_lb_target_group.my_target_group.id]
  vpc_zone_identifier = [aws_subnet.web_private.id]
  min_size = 1
  desired_capacity = 1
  max_size = 2
  health_check_grace_period = 50
  health_check_type = "EC2"
  wait_for_capacity_timeout = "7m"
  termination_policies = ["OldestInstance"]

  launch_template {
    id = aws_launch_template.webserver_launch_temp.id
  }

  tag {
    key                 = "Name"
    value               = "web_asg"
    propagate_at_launch = true
  }
}
