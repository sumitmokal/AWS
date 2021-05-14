resource  "aws-cloud-automation-meetup-sg" {
  name = "AWS"
  description = "allow ssh incomming"
  

  ingress {
    from_port = 22
    protocol = "tcp"
    to_port = 22
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  ingress {
    from_port = 80
    protocol = "tcp"
    to_port = 80
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  egress {
    from_port = 0
    protocol = "-1"
    to_port = 0
    cidr_blocks = [
      "0.0.0.0/0"]
  }

  tags = {
    Owner = "terraform-aws-cloud-automation"
    Project = "aws-cloud-automation-meetup"
  }
}

resource "aws_instance" "aws-cloud-automation-ec2" {
  ami = "ami-0a887e401f7654935"
  instance_type = "t2.micro"

  key_name = "cfn-key-1"

  user_data = file("install.sh")

  tags = {
    Owner = "terraform-aws-cloud-automation-meetup"
    Project = "aws-cloud-automation-meetup"
  }
}
