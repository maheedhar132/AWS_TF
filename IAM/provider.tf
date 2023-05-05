provider "aws" {

  region  = var.aws_region

  #AWS secrets
  access_key = var.aws_access_key
  secret_key = var.aws_secret_key

}