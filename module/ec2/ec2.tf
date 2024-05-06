provider "aws" {
  region = "us-east-1"
}
resource "aws_instance" "webserver" {
    ami = "ami-0c220c9e727c04f14"
    instance_type = "t2.micro"
    tags = {
    Name = "first instance" 
  }
}