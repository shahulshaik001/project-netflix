provider "aws" {
region = "ap-south-1"
}

resource "aws_instance" "one" {
count = 4
ami = "ami-03edbe403ec8522ed"
instance_type = "t2.micro"
key_name = "awskeypair"
vpc_security_group_ids = ["sg-041530ece07ff5134"]
tags = {
Name = var.instance_names[count.index]
}
}

variable "instance_names" {
default = ["jenkins", "tomcat-1", "tomcat-2", "Monitoring server"]
}
