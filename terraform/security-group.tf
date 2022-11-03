resource "aws_security_group" "sg_kube" {
  name        = var.security
  description = "Regras para liberar portas"


egress {
    from_port       = 6443
    to_port         = 6443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 10250
    to_port         = 10250
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 10259
    to_port         = 10259
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }


egress {
    from_port       = 10257
    to_port         = 10257
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 10250
    to_port         = 10250
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 30000
    to_port         = 32767
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 2379
    to_port         = 2380
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 80
    to_port         = 80
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

egress {
    from_port       = 443
    to_port         = 443
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }

ingress {
    from_port       = 22
    to_port         = 22
    protocol        = "tcp"
    cidr_blocks     = ["0.0.0.0/0"]
  }


  tags = {
    "Name" = "sg_kube"
    "Provider" = "terraform"
  }
  
}