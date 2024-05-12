locals {
  region          = "us-east-1"
  name_cluster    = "tech-challenge-cluster-1"
  name_vpc        = "tech-challenge-vpc"
  cidr            = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24","10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24","10.0.4.0/24"]
  intra_subnets   = ["10.0.5.0/24","10.0.6.0/24"]
  azs_vpc         = ["us-east-1a", "us-east-1b"]
  tags = {
    Cluster = local.name_cluster
  }
}