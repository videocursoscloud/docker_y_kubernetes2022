terraform {
  backend "s3" {
    bucket = "vcc-eks-terraform-state"
    key    = "02-eks/terraform.tfstate"
    region = "eu-west-2"
  }
}
