resource "aws_launch_configuration" "main-launchconfig" {
  name_prefix     = "main-launchconfig"
  image_id        = var.AMIS[var.AWS_REGION]
  instance_type   = "t2.medium"
  key_name        = aws_key_pair.mykeypair.key_name
  security_groups = [aws_security_group.allow-ssh.id]
}

resource "aws_autoscaling_group" "main-autoscaling" {
  name                      = "main-autoscaling"
  vpc_zone_identifier       = [aws_subnet.public_1.id,aws_subnet.private_1.id]
  launch_configuration      = aws_launch_configuration.main-launchconfig.name
  min_size                  = 2
  max_size                  = 5
  health_check_grace_period = 300
  health_check_type         = "EC2"
  force_delete              = true

  tag {
    key                 = "Name"
    value               = "ec2 instance"
    propagate_at_launch = true
  }
}
