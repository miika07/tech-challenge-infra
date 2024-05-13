locals {
  region          = "us-east-1"
  name_cluster    = "tech-challenge-eks"
  name_vpc        = "tech-challenge-vpc-eks"
  name_sg         = "tecg-challenge_sg"
  cidr            = "10.0.0.0/16"
  public_subnets  = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnets = ["10.0.3.0/24", "10.0.4.0/24"]
  intra_subnets   = ["10.0.5.0/24", "10.0.6.0/24"]
  azs_vpc         = ["us-east-1a", "us-east-1b"]
  vpc_id          = "vpc-04dd8d8fcf62c69d2"
  subnet_a        = "subnet-0c599c814eaa37df9"
  subnet_b        = "subnet-08ee06d28cd920e54"
  tags = {
    Cluster = local.name_cluster
  }
}