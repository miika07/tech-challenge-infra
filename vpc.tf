module "vpc" {
  source             = "terraform-aws-modules/vpc/aws"
  version            = "~> 4.0"
  name               = local.name_vpc
  cidr               = local.cidr
  private_subnets    = local.private_subnets
  public_subnets     = local.public_subnets
  enable_nat_gateway = true
  azs                = local.azs_vpc

  tags = {
    "kubernetes.io/cluster/${local.name_cluster}" = "shared",
    Environment = "VPC Tech Challenge - 1"
  }

  public_subnet_tags = {
    "kubernetes.io/cluster/${local.name_cluster}" = "shared"
    "kubernetes.io/role/elb"                        = "1"
  }

  private_subnet_tags = {
    "kubernetes.io/cluster/${local.name_cluster}" = "shared"
    "kubernetes.io/role/internal-elb"               = "1"
  }
}