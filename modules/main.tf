provider "aws" {
    region = "us-east-1"
  
}

module "ec2" {
    source = "./ec2"
    
}

output "module_output" {
    value = module.ec2module.instance_id       
  
}