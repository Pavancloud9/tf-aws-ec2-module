variable "ami_id" {
    
}

###### DEFAULT
variable "instance_type" {
    default = "t3.micro"
}

variable "sg_id" {

}

#### OPTIONAL
variable "tags" {
    default = {}
}