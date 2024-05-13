module "eks" {
  source                         = "terraform-aws-modules/eks/aws"
  version                        = "19.15.1"
  cluster_name                   = local.name_cluster
  cluster_role_arn               = aws_iam_role.eks_cluster_role.arn
  cluster_endpoint_public_access = true
  enable_cluster_creator_admin_permissions = true
  
  cluster_addons = {
    coredns = {
      most_recent = true
    }
    kube-proxy = {
      most_recent = true
    }
    vpc-cni = {
      most_recent = true
    }
  }
  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets

  eks_managed_node_group_defaults = {
    ami_type                              = "AL2_x86_64"
    instance_types                        = ["t3.small"]
    attach_cluster_primary_security_group = true
  }
  eks_managed_node_groups = {
    node = {
      min_size     = 1
      max_size     = 2
      desired_size = 1

      instance_types = ["t3.small"]
      capacity_type  = "SPOT"
    }
  }
  tags = local.tags
}