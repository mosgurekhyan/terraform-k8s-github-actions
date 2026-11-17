provider "aws" {
  region = var.aws_region
}

resource "aws_security_group" "server_security_group" {
  name = "my-sg"
  description = "Allow ssh and http"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "myserver" {
  ami = "ami-0aae07b42b5b77442"
  instance_type = "t3.micro"
  vpc_security_group_ids = [ aws_security_group.server_security_group.id ]
}