provider "aws" {
  region     = "us-west-2"
  
}

terraform {
  backend "s3" { }
  
}
data aws_ami ubuntu{
  owners  =["amazon"]
  most_recent = true
  name_regex = "ubuntu"
 
  }


resource aws_instance web {
  ami           = data.aws.ami.ubuntu.id
  instance_type =  var.type
  }




