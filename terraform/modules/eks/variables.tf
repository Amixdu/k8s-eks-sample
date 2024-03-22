variable "eks_cluster_role" {
  description = "EKS cluster role"
}

variable "eks_cluster_role_policy" {
  description = "EKS cluster role policy"
}

variable "eks_node_instance_role" {
  description = "EKS cluster role policy"
}

variable "ec2_container_registry_read_only_policy" {
  description = "EC2 container read only policy"
}

variable "eks_cni_policy" {
  description = "EKS CNI policy"
}

variable "eks_worker_node_policy" {
  description = "EKS worker node policy"
}

variable "subnets" {
  description = "Subnets"
}

variable "project" {}

variable "environment" {}