provider "aws" {
  region = "us-east-1"
}
#
#resource "aws_vpc" "myvpc" {
#   cidr_block = "10.0.0.0/16"
#    tags = {
#   Name      = "myvpc"  # Set your desired vpc name here
#    "Terraform" = "Yes"
#  }
  
#}

resource "aws_vpc" "myvpc" {
    cidr_block = "10.0.0.0/16"
    tags = {
    Name = var.inputname
    }
  }

  output "vpcid" {
    value = aws_vpc.myvpc.id
    
  }


  #tupples

  