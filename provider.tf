terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "5.84.0"
    }
  }
rm -rf .terraform terraform.tfstate terraform.tfstate.backup


# (Should match your S3 bucket and DynamoDB table)
 backend "s3" {
   bucket         = "cva-tf-remote-state"
   key            = "sg-test"
   region         = "us-east-1"
   dynamodb_table = "cva-state-locking"
 }

# 3️⃣ Initialize Terraform fresh with your backend


provider "aws" {
  # Configuration options
  region = "us-east-1"
}