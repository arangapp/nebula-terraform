provider "aws" {
    region = "us-east-1"
  
}

module "ec2" {
    source = "./ec2"
    ec2name = "Name from module"
    
}

output "module_output" {
    value = module.ec2name.instance_id       
  
}