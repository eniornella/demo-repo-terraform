# Below is the resource block which creates EC2 Instance
resource "aws_instance" "test" {
  ami        = "ami-0ff3578f8df132330"
  instance_type = "t2.micro"
  count = 3
  tags = {
    Name = "terraform-ec2"
   }
}


# Below is the provider which helps in connecting with AWS Account
# provider "aws" {
#   region = "us-east-1"
#   access_key = 
# }
