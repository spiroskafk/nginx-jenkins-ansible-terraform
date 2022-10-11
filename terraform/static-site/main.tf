provider "aws" {
	region = var.region
	profile = var.profile
}

resource "aws_instance" "site" {
	ami = "ami-0493936afbe820b28"
	instance_type = "t2.micro"
	key_name = "devops_linux"
	vpc_security_group_ids = [ "sg-020498c32a34ae060"]
	tags = {
	  Name = var.name
	  group = var.group
	  
	}
}