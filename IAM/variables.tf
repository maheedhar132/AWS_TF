variable "aws_access_key" {
  type = string
}

variable "aws_secret_key" {
  type = string
}

variable "aws_region" {
  type = string
  default = "us-east-1"
}

variable "iam_users" {
  type = list(string)
  default = [ "Batman", "Superman", "Aquaman" ]
}

# Set secrets via environment variables
##  export TF_VAR_aws_access_key=(the username)
##  export TF_VAR_aws_secret_key=(the password)
# When you run Terraform, it'll pick up the secrets automatically