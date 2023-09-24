provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "myEC2" {
  ami           = "ami-00aa0673b34e3c150"
  instance_type = "t2.micro"

  tags = {
    Name = "My2ndEC2"
    Env  = "prod"
  }

}

output "public_IP" {
  value = "aws_instance.myEC2.public_ip"
}

/*
provider "aws" {
  region = "us-west-2"
  #profile = "default"
}

resource "aws_vpc" "test" {
  cidr_block = "10.0.0.0/16"
}
*/