data "aws_vpc" "default" {
  default = true
}

resource "aws_eks_cluster" "eks_cluster" {
  name     = "${var.project}-${var.environment}-eks-cluster"
  role_arn = var.eks_cluster_role.arn
  version  = "1.28"

  vpc_config {
    subnet_ids = var.subnets.ids
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Cluster handling.
  # Otherwise, EKS will not be able to properly delete EKS managed EC2 infrastructure such as Security Groups.
  depends_on = [
    var.eks_cluster_role_policy
  ]
}

resource "aws_eks_node_group" "eks_node_group" {
  cluster_name    = aws_eks_cluster.eks_cluster.name
  node_group_name = "example"
  node_role_arn   = var.eks_node_instance_role.arn
  subnet_ids      = var.subnets.ids
  instance_types  = ["t3.large"]

  scaling_config {
    desired_size = 3
    max_size     = 4
    min_size     = 1
  }

  update_config {
    max_unavailable = 2
  }

  # Ensure that IAM Role permissions are created before and deleted after EKS Node Group handling.
  # Otherwise, EKS will not be able to properly delete EC2 Instances and Elastic Network Interfaces.
  depends_on = [
    var.ec2_container_registry_read_only_policy,
    var.eks_cni_policy,
    var.eks_worker_node_policy,
  ]
}

resource "aws_eks_addon" "core_dns" {
  cluster_name = aws_eks_cluster.eks_cluster.name
  addon_name   = "coredns"
}

resource "aws_eks_addon" "kube_proxy" {
  cluster_name = aws_eks_cluster.eks_cluster.name
  addon_name   = "kube-proxy"
}

resource "aws_eks_addon" "vpc_cni" {
  cluster_name = aws_eks_cluster.eks_cluster.name
  addon_name   = "vpc-cni"
}

# resource "aws_eks_addon" "pod_identity_agent" {
#   cluster_name = aws_eks_cluster.eks_cluster.name
#   addon_name   = "eks-pod-identity-agent"
# }
