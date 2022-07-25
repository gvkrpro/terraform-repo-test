terraform {
  backend "s3" {
    bucket = "mybucket-1213-2131"
    key    = "jenkins/terraform.tfstate"
    region = "ap-south-1"
    dynamodb_table = "mytable"
  }
}
