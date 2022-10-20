provider "aws" {
    region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "b50-tf-state-bucket"
    key    = "robot/env/terrafom.tfstate"
    region = "us-east-1"
   }
}