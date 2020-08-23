# provider info with authentication
provider "aws" {
  region     = "ap-south-1"
  access_key = var.accesskey # value needs to set has environment varibles with key TF_VAR_accesskey
  secret_key = var.secretkey # value needs to set has environment varibles with key TF_VAR_secretkey
}

# resource::: EC2 instance with jenkins server
resource "aws_instance" "jenkinsServer" {
  ami           = "ami-0ebc1ac48dfd14136" // AMI id inside above mentioned region
  instance_type = var.instance_type // instance type
}