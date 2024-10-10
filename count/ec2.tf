resource "aws_instance" "db" {
    #count = 3
    count = length(var.instance_names)
    ami = "ami-09c813fb71547fc4f"
    instance_type = "t3.micro"
    vpc_security_group_ids = [aws_security_group.allow_ssh.id]
    tags = {
        Name = var.instance_names[count.index]
    }
}

resource "aws_security_group" "allow_ssh" {
  name        = "allow_ssh"
  description = "allowing ssh access"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"] 
  }

  egress {
    from_port   = 0 # from 0 to 0 means, opening all ports
    to_port     = 0
    protocol    = "-1" # -1 all protocols
    cidr_blocks = ["0.0.0.0/0"] 
  }


  tags = {
    Name = "allow_ssh"
    creadted = "vinay"
  }  
}
