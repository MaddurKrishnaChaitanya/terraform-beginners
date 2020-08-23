# provider info with authentication
provider "aws" {
  region     = "ap-south-1"
  access_key = var.accesskey # value needs to set has environment varibles with key TF_VAR_accesskey
  secret_key = var.secretkey # value needs to set has environment varibles with key TF_VAR_secretkey
}

# resource::: EC2 instance with jenkins server
resource "aws_instance" "jenkinsServer" {
  ami           = "ami-0ebc1ac48dfd14136" // AMI id inside above mentioned region
  instance_type = "t2.micro" // instance type
  tags = {
    Name = "Jenkins_Server"
  }
}

resource "aws_eip" "lb" {
  vpc      = true
}

output "eip"{
  value= "${aws_eip.lb.id}"
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.jenkinsServer.id
  allocation_id = aws_eip.lb.id
}

resource "aws_security_group" "my-terraform-sg" {
  name        = "my-terraform-sg"
  description = "Allow TLS inbound traffic for elastic ip"
  #inbound in SG
  ingress {
    from_port   = 443
    to_port     = 443
    protocol    = "tcp"
    cidr_blocks = ["${aws_eip.lb.public_ip}/32"]
  }
}