resource "aws_instance" "db" {
    ami = "ami-09c813fb71547fc4f"
    vpc_security_group_ids = ["sg-024d5c7c03eca9f56"]
    instance_type = "t3.micro"
    
    tags = {
        Name = "db"
    }
}
