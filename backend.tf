terraform {
  backend "s3" {
    bucket = "mystate"
    key    = "terraform.tfstate"
    region = "us-west-1"
    #region = "eu-central-1"
    dynamodb_table = "my_terraform_state"
  }
}