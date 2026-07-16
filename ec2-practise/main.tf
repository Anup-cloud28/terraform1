provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "AkTestinstance" {
    ami = "ami-0b6d9d3d33ba97d99"
    instance_type = "t3.micro"
    security_groups = [aws_security_group.TestSG.name]
    tags = {
        Name = "Aktestinstance"
        Owner = "Anup"
        Company = "AK"
    }
}

resource "aws_security_group" "TestSG" {
    name = "Allow Http"

    ingress {
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]  
    }

    ingress {
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"] 
    }

    egress {
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"] 
    }
  
}