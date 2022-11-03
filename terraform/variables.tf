variable "ami" {
    default = "ami-0149b2da6ceec4bb0"
  
}

variable "instance_type" {
    default = "t3.medium"
  
}


variable "security" {
    default = "sg_kube"
  
}

variable "instance_tags" {
  type = list
  default = ["kube-master01", "kube-master02", "haproxy"]
}


variable "instance_count" {
  default = "3"
}

variable "aws_key" {
    default = "aws-terraform"
  
}