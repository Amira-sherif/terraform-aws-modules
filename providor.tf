# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

# Create a VPC
resource "aws_vpc" "example" {
  cidr_block = "10.0.0.0/16"
}
provider "aws" {
  region = "us-east-1"
}
// terraform {
//  backend "s3" {
//    bucket = "mybucket"
  //  key    = "terraform.tfstate"
 //   region = "us-east-1"
  //  dynamodb_table = " DynamoDB-name"
 // }
// }
