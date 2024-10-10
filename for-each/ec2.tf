resource "aws_instance" "expense" {
    for_each = var.instance_names # eache.key and each.key
    #count = length(var.instance_names)
    ami = data.aws_ami.ami_info.id
    vpc_security_group_ids = ["sg-024d5c7c03eca9f56"]
    instance_type = each.value
    

    #left side called as arugument right side called as values
    tags = merge (
        var.common_tags,
        {
            Name = each.key
            module = each.key
        }
    )  
    
}