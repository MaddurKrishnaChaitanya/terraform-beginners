# provider info with authentication
provider "aws" {
  region     = "ap-south-1"
  access_key = var.accesskey # value needs to set has environment varibles with key TF_VAR_accesskey
  secret_key = var.secretkey # value needs to set has environment varibles with key TF_VAR_secretkey
  version  = ">= 2.7"
  #version  = "<= 2.7"
  #version  = "~> 2.0"
  #version  = ">=2.8,<=2.10"
}

# resource::: EC2 instance with jenkins server
resource "aws_instance" "versionServer" {
  ami           = "ami-0ebc1ac48dfd14136" // AMI id inside above mentioned region
  instance_type = "t2.micro" // instance type
  tags = {
    Name = "Jenkins_Server"
  }
}