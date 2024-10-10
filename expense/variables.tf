# ec2 variables
variable "instance_names" {
    type = list
    default = ["db","backend","frontend"]
}
variable "image_id" {
    type = string
    default = "ami-09c813fb71547fc4f"
    description = "RHEl-9 AMI ID"
}

variable "instance_type" {
    default = "t3.micro"
    type = string
}

variable "common_tags" {
    default = {
        project = "Expense"
        Environment = "Dev"
        Terraform = "True"
    }
}

#sg variables
variable "sg_name" {
    default = "allow_ssh"
}

variable "sg_description" {
    default = "allowing port 22"
}

variable "ssh_port" {
    default = 22
}

variable "protocol" {
    default = "tcp"
}

variable "allowed_cidr" {
    type = list(string)
    default = ["0.0.0.0/0"]
}


#r53
variable "zone_id" {
    default = "Z0433519M9BZ8WH68PMS"
}
variable "domain_name" {
    default = "vinaydevops.online"
}