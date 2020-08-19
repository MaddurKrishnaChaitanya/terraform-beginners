# provider info with authentication
provider "aws" {
  region     = "ap-south-1"
  access_key = "AKIARH265V76FFFBJJZW"
  secret_key = "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"
}

# resource::: EC2 instance
resource "aws_instance" "jenkinsServer" {
  ami           = "ami-0ebc1ac48dfd14136"
  instance_type = "t2.micro"
}