terraform {
  backend "s3" {
    bucket = "vcc-eks-terraform-state"
    key    = "04-k8s-resources/terraform.tfstate"
    region = "eu-west-2"
  }
}
