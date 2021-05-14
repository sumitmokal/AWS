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
