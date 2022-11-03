resource "aws_instance" "kubernetes" {
    ami = var.ami
    instance_type = var.instance_type
    security_groups = ["kubernetes"]
    key_name = var.aws_key
    tags = {
        Name = var.ec2name
}
}