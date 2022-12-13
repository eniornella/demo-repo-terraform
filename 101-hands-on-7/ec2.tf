resource "aws_instance" "web" {
  ami           = var.ami_id["linux"]
  instance_type = var.instance_type[0]
  tags = {
    Name = var.ec2_name_tag[0]
  }
}


resource "aws_instance" "app" {
  ami           = var.ami_id["ubuntu"]
  instance_type = var.instance_type[1]
  tags = {
    Name = var.ec2_name_tag[1]
  }
}