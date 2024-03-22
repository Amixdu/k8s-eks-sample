output "eks_cluster_role" {
  value = aws_iam_role.eks_cluster_role
}

output "eks_cluster_role_policy" {
  value = aws_iam_role_policy_attachment.eks_cluster_role_policy
}

output "eks_node_instance_role" {
  value = aws_iam_role.eks_node_instance_role
}

output "ec2_container_registry_read_only_policy" {
  value = aws_iam_role_policy_attachment.ec2_container_registry_read_only_policy
}

output "eks_cni_policy" {
  value = aws_iam_role_policy_attachment.eks_cni_policy
}

output "eks_worker_node_policy" {
  value = aws_iam_role_policy_attachment.eks_worker_node_policy
}
