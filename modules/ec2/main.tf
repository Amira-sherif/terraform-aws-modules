#Creating EC2 instance in Public Subnet
resource "aws_instance" "bastion" {
  ami           = var.ami-1-id
  instance_type = var.instance-type
  vpc_security_group_ids = [var.sgid1]
  subnet_id = var.subnet-id1
  associate_public_ip_address = var.associate-public-ip-address
tags = {
    Name = var.instance-1-name
  }
}

#Creating EC2 instance in Public Subnet
resource "aws_instance" "demoinstance2" {
  ami           = var.ami-2-id
  instance_type = var.instance-type
  key_name = var.key-name
  vpc_security_group_ids = [var.sgid2]
  subnet_id = var.subnet-id2
  associate_public_ip_address = var.associate-public-ip-address
tags = {
    Name = var.instance-2-name
  }
}