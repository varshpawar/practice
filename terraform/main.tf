provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "k8s_node" {
  ami                    = "ami-0f8a61b66d1accaee"
  instance_type          = "t2.medium"
  key_name               = "nkp"
  vpc_security_group_ids = ["sg-09c82768532c40d94"]

  tags = {
    Name = "k8s-node"
  }
}
