output "instance_ids" {
  description = "List of EC2 instance IDs"
  value       = aws_instance.app[*].id
}

output "public_ips" {
  description = "List of public IPs of the EC2 instances"
  value       = aws_instance.app[*].public_ip
}

output "private_ips" {
  description = "List of private IPs of the EC2 instances"
  value       = aws_instance.app[*].private_ip
}