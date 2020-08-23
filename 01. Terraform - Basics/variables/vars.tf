variable "accesskey" {
    type = string
    description = "AWS user account access_key"
}

variable "secretkey" {
    type = string
    description = "AWS user account secret_key"
}

variable "region" {
    type = string
    description = "AWS region"
    default = "ap-south-1"
}

variable "amis"{
    type= map
    default = {
        "ap-south-1" = "ami-0ebc1ac48dfd14136"
    }
} 