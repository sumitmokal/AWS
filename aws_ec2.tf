resource "aws_security_group" "aws-cloud-automation-meetup-sg" {
  name = "aws-cloud-automation-meetup-sg"
  description = "allow ssh incomming"
  vpc_id = "vpc-837debe8"

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
    Owner = "terraform-aws-cloud-automation-meetup"
    Project = "aws-cloud-automation-meetup"
  }
}

resource "aws_instance" "aws-cloud-automation-meetup-ec2" {
  ami = "ami-0a887e401f7654935"
  instance_type = "t2.micro"

  key_name = "cfn-key-1"

  vpc_security_group_ids = [aws_security_group.aws-cloud-automation-meetup-sg.id  ]

  user_data = file("install.sh")

  tags = {
    Owner = "terraform-aws-cloud-automation-meetup"
    Project = "aws-cloud-automation-meetup"
  }
}