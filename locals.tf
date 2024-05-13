locals {
  region          = "us-east-1"
  name_cluster    = "tech-challenge-eks"
  name_vpc        = "tech-challenge-vpc"
  name_sg         = "tecg-challenge_sg"
  cidr            = "10.0.0.0/16"
  private_subnets = ["10.0.10.0/24", "10.0.20.0/24", "10.0.30.0/24"]
  public_subnets  = ["10.0.40.0/24", "10.0.50.0/24", "10.0.60.0/24"]
  tags = {
    Cluster = local.name_cluster
  }
}