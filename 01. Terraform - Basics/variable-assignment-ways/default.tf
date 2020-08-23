variable "instance_type"{
    default = "t2.micro"
}
variable "accesskey" {
    type = string
    description = "AWS user account access_key"
}

variable "secretkey" {
    type = string
    description = "AWS user account secret_key"
}