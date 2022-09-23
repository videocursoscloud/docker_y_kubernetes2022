data "terraform_remote_state" "eks" {
  backend = "s3"

  config = {
    bucket = "vcc-eks-terraform-state"
    key    = "eks/terraform.tfstate"
    region = "eu-west-2"

  }
}
