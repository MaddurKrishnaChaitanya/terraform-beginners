provider "aws"{
  region     = var.region
  access_key = var.accesskey # value needs to set has environment varibles with key TF_VAR_accesskey
  secret_key = var.secretkey # value needs to set has environment varibles with key TF_VAR_secretkey
}