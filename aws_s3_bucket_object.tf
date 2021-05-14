resource "aws_s3_bucket_object" "aws-cloud-automation-meetup-s3-file" {
  bucket = aws_s3_bucket.aws-cloud-automation-meetup-s3.bucket
  key = "test.txt"
  source = "test.txt"
  acl = "public-read"

  tags = {
    Owner = "terraform-aws-cloud-automation-meetup"
    Project = "aws-cloud-automation-meetup"
  }
}