provider "aws" {
  region = "us-east-1"
}

resource  "aws_vpc" "Testak_VPC" {
    cidr_block = "10.0.0.0/24"
    tags = {
        Name = "Testak_VPC"
    }
}