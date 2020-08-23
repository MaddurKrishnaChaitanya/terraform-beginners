resource "aws_instance" "variable_instance"{
    ami = lookup(var.amis,var.region)
    instance_type = "t2.micro"
}