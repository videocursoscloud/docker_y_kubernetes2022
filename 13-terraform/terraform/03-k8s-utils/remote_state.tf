terraform {
  backend "s3" {
    bucket = "vcc-eks-terraform-state"
    key    = "03-k8s-utils/terraform.tfstate"
    region = "eu-west-2"
  }
}
