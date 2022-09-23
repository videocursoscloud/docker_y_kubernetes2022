terraform {
  backend "s3" {
    bucket = "vcc-eks-terraform-state"
    key    = "k8s/terraform.tfstate"
    region = "eu-west-2"
  }
}
