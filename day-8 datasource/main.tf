data "aws_subnet" "anu" {
  id = ("subnet-0367494879165f326")
  
}



resource "aws_instance" "ec2" {
  ami = "ami-02b49a24cfb95941c"
  instance_type = "t2.micro"
  key_name = "mum-key"
  subnet_id = data.aws_subnet.anu.id
  
}