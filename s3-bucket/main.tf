provider "aws" {
    region = "us-east-1"
    access_key = ""
    secret_key = ""
}

resource "aws_s3" "Testak_s3" {
    bucket = "testak-s3bucket"
}