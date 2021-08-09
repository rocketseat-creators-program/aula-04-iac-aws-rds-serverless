
resource "aws_security_group" "default" {
  name        = local.security_group_name
  description = "Allow all inbound traffic"
  vpc_id      = data.aws_vpc.selected.id

  ingress {
    from_port   = 0
    to_port     = 65535
    protocol    = "TCP"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = local.tags
}


resource "random_string" "resources_prefix" {
  length  = 6
  upper   = false
  special = false
  number  = true
}