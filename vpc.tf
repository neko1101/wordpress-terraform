#############################################################
# VPC
#############################################################

module "vpc" {
  source = "terraform-aws-modules/vpc/aws"

  name                         = "${var.prefix}-${var.environment}-vpc"
  cidr                         = var.vpc_cidr
  azs                          = data.aws_availability_zones.this.names
  create_database_subnet_group = "true"
  public_subnets               = var.public_subnet_cidrs
  private_subnets              = var.private_subnet_cidrs
  database_subnets             = var.database_subnets_cidrs
  enable_dns_hostnames         = "true"
  enable_nat_gateway           = true
  single_nat_gateway           = true
  one_nat_gateway_per_az       = false

  tags = var.tags
}
