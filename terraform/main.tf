module "iam_module" {
  source      = "./modules/iam"
  project     = var.project
  environment = var.environment
}

module "vpc_module" {
  source = "./modules/vpc"
}

module "eks_module" {
  source                                  = "./modules/eks"
  project                                 = var.project
  environment                             = var.environment
  eks_cluster_role                        = module.iam_module.eks_cluster_role
  eks_cluster_role_policy                 = module.iam_module.eks_cluster_role_policy
  eks_node_instance_role                  = module.iam_module.eks_node_instance_role
  ec2_container_registry_read_only_policy = module.iam_module.ec2_container_registry_read_only_policy
  eks_cni_policy                          = module.iam_module.eks_cni_policy
  eks_worker_node_policy                  = module.iam_module.eks_worker_node_policy
  subnets                                 = module.vpc_module.subnets
}