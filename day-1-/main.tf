provider "aws" {

}

resource "aws_instance" "aws" {

  ami           = var.ami_id
  instance_type = var.instance_type
  key_name      = var.key_name
  tags = {
    Name = "anu"

  }
}
