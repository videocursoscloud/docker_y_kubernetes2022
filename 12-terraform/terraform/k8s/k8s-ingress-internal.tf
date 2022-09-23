resource "kubernetes_ingress_v1" "example_ingress_internal" {
  metadata {
    name = "example-ingress-internal"
    annotations = {
      "alb.ingress.kubernetes.io/target-type" = "ip"
    }    
  }

spec {
    ingress_class_name = "alb"

    rule {
      http {
        path {
          backend {
            service {
              name = kubernetes_service.example_np.metadata.0.name
              port {
                number = kubernetes_service.example_np.spec.0.port.0.port
              }
            }
          }

          path = "/*"
        }

     
      }
    }


  }
}



