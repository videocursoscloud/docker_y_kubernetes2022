resource "kubernetes_service" "example_lb" {
  metadata {
    name = "terraform-example-lb"
  }
  spec {
    selector = {
      app = kubernetes_deployment_v1.example.metadata.0.labels.app
    }
    port {
      port        = 80
      target_port = 80
    }
    type = "LoadBalancer"
  }
}
