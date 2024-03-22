variable "eks_cluster_role" {
  default     = "eks-cluster-role"
  description = "EKS cluster role"
  type        = string
}

variable "eks_node_instance_role" {
  default     = "eks-node-instance-role"
  description = "EKS node instance role"
  type        = string
}

variable "project" {}

variable "environment" {}