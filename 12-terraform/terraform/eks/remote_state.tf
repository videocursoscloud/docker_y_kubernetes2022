terraform {
  backend "s3" {
    bucket = "vcc-eks-terraform-state"
    key    = "eks/terraform.tfstate"
    region = "eu-west-2"
  }
}
