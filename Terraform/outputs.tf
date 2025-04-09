output "vpc_id" {
  description = "ID of the VPC"
  value       = module.network.vpc_id
}

output "subnet_id" {
  description = "ID of the subnet"
  value       = module.network.subnet_id
}

output "ec2_instance_ids" {
  description = "IDs of the EC2 instances"
  value       = module.ec2.instance_ids
}

output "ec2_public_ips" {
  description = "Public IPs of the EC2 instances"
  value       = module.ec2.public_ips
}
