
variable "ami_id" {
default = {
    0:"ami-0c2ab3b8efb09f272",
    1:"ami-0b152cfd354c4c7a4"
     }
type = map

}

variable "instance_type" {
 default = ["t2.micro","t2.nano"]
 type = list 
}

variable "ec2_name_tag" {
default = ["web-server","app-server"]
type = list
}