output "load_balancer_controller_iam_role_arn"{
  value = aws_iam_role.load_balancer_controller.arn
}

output "cluster_id"{
  value = module.eks.cluster_id
}

output "kubeconfig_command" {
  value = "rm $HOME/.kube/config ; aws eks update-kubeconfig --name vcc-eks-tf"
}
