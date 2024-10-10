resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    instance_type = var.instance_name == "db" ? "t3.small" : "t3.microcd"
    
}

