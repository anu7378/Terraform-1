variable "ami" {
  type    = string
  default = "ami-02b49a24cfb95941c"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
}

# main.tf
resource "aws_instance" "instance-dev" {
  ami           = var.ami
  instance_type = var.instance_type
  count         = var.instance_type == "t2.micro" ? 1 : 0
  tags = {
    Name = "dev_server"
  }
}