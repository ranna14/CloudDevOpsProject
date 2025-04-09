variable "subnet_id" {
  description = "ID of the public subnet where EC2 instances will be launched"
  type        = string
}

variable "security_group_id" {
  description = "Security group ID to associate with the EC2 instances"
  type        = string
}

variable "key_name" {
  description = "SSH key pair name to access the EC2 instances"
  type        = string
}

variable "volume_size" {
  description = "Size of the root EBS volume in GiB"
  type        = number
  default     = 8
}


