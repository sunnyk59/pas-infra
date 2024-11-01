module "vpc" {
  source  = "./vpc"
}

module "eks" {
  source          = "./eks-cluster"
  cluster_name    = var.eks_cluster_name
  node_instance_type = var.node_instance_type
}

module "rds" {
  source  = "./rds"
}

