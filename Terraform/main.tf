terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

}

module "vpc" {
  source       = "./modules/vpc"
  vpc_cidr     = var.vpc_cidr
  subnet_cidr  = var.subnet_cidr
}

module "ec2" {
  source              = "./modules/ec2"
  subnet_id           = module.vpc.subnet_id
  security_group_id   = module.vpc.security_group_id
  key_name            = var.key_name
  volume_size         = var.volume_size
}

module "cloudwatch" {
  source       = "./modules/cloudwatch"
  instance_ids = module.ec2.instance_ids  
}

