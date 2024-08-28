terraform {
  backend "s3" {
    bucket = "ghhghghghg"
    region = "ap-south-1"
    key = "terraform.tfstate"
    dynamodb_table = "terraform-state-lock-dynamo"
    encrypt = true
    
  }
}