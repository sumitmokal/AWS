resource "aws_s3_bucket" "aws-cloud-automation-meetup-s3" {

  bucket = "aws-cloud-automation-meetup.f1kart.com"

  acl = "public-read"

  tags = {
    Owner = "terraform-aws-cloud-automation-meetup"
    Project = "aws-cloud-automation-meetup"
  }
}