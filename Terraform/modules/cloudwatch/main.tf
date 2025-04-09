resource "aws_cloudwatch_metric_alarm" "cpu" {
  for_each = toset(var.instance_ids)  # Loop through each EC2 instance ID

  alarm_name          = "cpu-usage-${each.key}"  
  comparison_operator = "GreaterThanThreshold"
  evaluation_periods  = "2"
  metric_name         = "CPUUtilization"
  namespace           = "AWS/EC2"
  period              = "120"
  statistic           = "Average"
  threshold           = "80"
  alarm_description   = "This metric monitors EC2 CPU utilization"
  dimensions = {
    InstanceId = each.key  
  }
}
