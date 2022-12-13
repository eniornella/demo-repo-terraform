resource "aws_instance" "test" {
  for_each = var.ami_id
  ami       = each.value
  instance_type = var.instance_type[each.key]
  
  tags = {
    Name = var.ec2_name_tag[each.key]
    AMID = each.value
    Type = var.instance_type[each.key]
    Iteration = each.key
  }
}
