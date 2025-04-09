variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "key_name" {
  description = "The name of the SSH key pair"
  type        = string
}

variable "volume_size" {
  description = "Size of the root EBS volume in GiB"
  type        = number
  default     = 20
}
