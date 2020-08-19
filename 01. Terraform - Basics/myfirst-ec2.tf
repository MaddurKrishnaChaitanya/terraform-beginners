# provider info with authentication
provider "aws" {
  region     = "ap-south-1"
  access_key = "your access key"
  secret_key = "your secret_key"
}

# resource::: EC2 instance with jenkins server
resource "aws_instance" "jenkinsServer" {
  ami           = "ami-0ebc1ac48dfd14136" // AMI id inside above mentioned region
  instance_type = "t2.micro" // instance type
  tags = {
    Name = "Jenkins_Server"
  }
}