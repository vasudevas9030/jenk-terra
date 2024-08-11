
variable "prefix" {
    description = "this is to provide for a resources"
    default = "jenkins" 
}
variable "tomcat" {
    description = "this is to provide for a resources"
    default = "tomcat" 
}
variable "ansible" {
    description = "this is to provide for all ansible"
    default = "nexus"
}
variable "region" {
  description = "need to set region for instance"
  default = "us-east-2"
}
/*variable "vpc_cidr"{
    description="connect cider to vpc"
    default="5.0.0.0/16"
}
variable "subnet_cidr"{
    description="give subnet cidr block"
    default="5.0.2.0/24"
}*/
variable "ami_id"{
    description = "ami id is support to create a instance"
    default = "ami-0649bea3443ede307"
}
variable "instance_type_t3medium" {
   description = "instance configures"
    default = "t3.medium"
}
variable "instance_type_t2micro" {
   description = "instance configures"
    default = "t2.micro"
}

variable "key_name" {
   description = "key name of instance to login"
    default ="kong"
}