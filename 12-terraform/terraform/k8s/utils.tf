resource "helm_release" "nginx_ingress" {
  name = "nginx-ingress-controller"

  repository       = "https://charts.bitnami.com/bitnami"
  chart            = "nginx-ingress-controller"
  namespace        = "ingress-nginx"
  create_namespace = true
  set {
    name  = "service.type"
    value = "ClusterIP"
  }
}


resource "helm_release" "load_balance_ingress_controller" {
  name             = "load-balancer-ingress-controller"
  repository       = "https://aws.github.io/eks-charts"
  chart            = "aws-load-balancer-controller"
  namespace        = "kube-system"
  create_namespace = true
  set {
    name  = "clusterName"
    value = data.terraform_remote_state.eks.outputs.cluster_id
  }
  set {
    name  = "serviceAccount.create"
    value = false
  }
  set {
    name  = "serviceAccount.name"
    value = kubernetes_service_account_v1.aws_load_balancer_controller.metadata.0.name
  }
  set {
    name  = "vpcId"
    value = data.terraform_remote_state.eks.outputs.vpc_id
  }

}


