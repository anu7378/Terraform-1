resource "aws_instance" "dev" {
    ami = "ami-02b49a24cfb95941c"
    instance_type = "t2.micro"
    key_name = "mum-key"
    tags = {
      Name = "EKs"
    }
}

#command terraform import aws_instance.dev i-0e3f670f4ee619528l                                                                                       
                                                                                                                                                                      