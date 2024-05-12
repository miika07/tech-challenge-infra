module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  version            = "~> 4.0"
  name               = local.name_vpc
  cidr               = local.cidr
  private_subnets    = local.private_subnets
  public_subnets     = local.public_subnets
  enable_nat_gateway = true
  tags = {
    Environment = "VPC Tech Challenge"
  }
}