# Creating launch template to be used in web autoscaling group.

resource "aws_launch_template" "webserver_launch_temp" {
  name          =  "webserver_launch_temp"
  image_id      =  var.web_ami
  instance_type =  "t3.micro"
  ebs_optimized = true
  vpc_security_group_ids = [aws_security_group.web_sg.id]
  instance_initiated_shutdown_behavior = "terminate"        
  disable_api_termination = false
  


  tag_specifications {
    resource_type = "instance"

    tags = {
      Name = "web_asg"
    }
  }
}

