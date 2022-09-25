terraform {
  backend "s3" {
    bucket = "vcc-eks-terraform-state"
    key    = "01-vpc/terraform.tfstate"
    region = "eu-west-2"
  }
}
