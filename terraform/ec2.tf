resource "aws_instance" "kube" {
    ami = var.ami
    count = var.instance_count
    instance_type = var.instance_type
    security_groups = ["sg_kube"]
    key_name = var.aws_key
    tags = {
        Name = element(var.instance_tags, count.index)
}
}