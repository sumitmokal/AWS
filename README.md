# aws-cloud-automation-meetup

## Getting started

To code along with this demo, you'll need to:
* create an account on AWS, Terraform Cloud, Github, and Slack. 
* you'll need to setup ssh on Github so that you can push changes to Github
* download PyCharm CE and install the Terraform plugin, this is so that you can have Terraform auto-complete, not required, but good to have.
* clone this repo so that you can have the example locally.
* Join my Slack organization to see the Terraform Slack notificatons:  https://join.slack.com/t/f1kart/shared_invite/zt-d4e9o5qv-nrRD0C5Fcfq2sddyzw6_Fg

## Technologies 
* Amazon Web Services(AWS)
* Terraform Cloud
* Github
* Slack
* PyCharm CE


### Amazone Web Services(AWS)

https://aws.amazon.com/

This is our cloud infrastructure provider.

### Terraform Cloud

https://www.terraform.io/

This is a hosted service that makes it easy to run terraform in a consistent environment. It itegrates easliy with Github, and it will allow us to do infrastructure updates based on a Github commit.

### Github

https://github.com/

### Slack

https://slack.com/

I use Slack for Terraform build notifications.

### PyCharm CE

https://www.jetbrains.com/pycharm/download/

PyCharm is an editor provided by JetBrains. I use it with the Terraform plugin for auto-complete and formatting.

## Steps

1. Create a Terraform Cloud workspace, connect it to Github
2. Create AWS user, configure AWS credentials in Terraform Cloud
3. Create a Slack channel, slack App, and incomming webhook, and configure Terraform Notification
3. Configure the AWS provider in Terraform
4. Create an S3 bucket
5. Create a basic EC2 instance
6. Create an EC2 instance with a web-server

## Additional Resources
* S3 Templates: https://github.com/papiamento/terraform-templates-aws-s3
* EC2 Templates: https://github.com/papiamento/terraform-templates-aws-ec2
* Youtube Video: https://www.youtube.com/watch?v=dB9UdzZo5VA

## Questions
* Can you use federate users with Terraform Cloud?
