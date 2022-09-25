data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "vcc-eks-terraform-state"
    key    = "01-vpc/terraform.tfstate"
    region = "eu-west-2"

  }
}
data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "vcc-eks-terraform-state"
    key    = "02-eks/terraform.tfstate"
    region = "eu-west-2"

  }
}
