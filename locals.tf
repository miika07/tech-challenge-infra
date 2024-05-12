locals {
  region          = "us-east-1"
  name_cluster    = "tech-challenge-cluster"
  name_vpc        = "tech-challenge-vpc"
  cidr            = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24"]
  private_subnets = ["10.0.2.0/24"]
  intra_subnets   = ["10.0.3.0/24"]

  tags = {
    Cluster = local.name_cluster
  }
}