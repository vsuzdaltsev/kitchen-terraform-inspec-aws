provider "aws" {
}

resource "aws_instance" "example" {
  ami                    = var.ami
  source_dest_check      = false
  instance_type          = var.instance_type
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.example_ssh.id]

  tags = {
    "destiny" : "DELETE ME"
  }
}

data "aws_vpc" "default" {
  default = true
}

resource "aws_security_group" "example_ssh" {
  name        = "example_ssh"
  description = "Allow traffic from outside"
  vpc_id      = data.aws_vpc.default.id

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
