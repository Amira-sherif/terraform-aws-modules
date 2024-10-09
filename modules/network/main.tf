resource "aws_vpc" "myvpc" {
  cidr_block = var.vpc-cidr
  tags = {
    Name = var.vpc-name
  }

}
resource "aws_subnet" "public-subnet" {
  vpc_id                 = aws_vpc.myvpc.id
  cidr_block             = var.subnet-cidr1
  availability_zone = var.subnet-az1
  map_public_ip_on_launch = var.public1
tags = {
    Name = var.subnet-name-1
  }
}
# Creating Private subnet 
resource "aws_subnet" "private-subnet" {
  vpc_id                  = aws_vpc.myvpc.id
  cidr_block             = var.subnet-cidr2
  availability_zone = var.subnet-az2
  map_public_ip_on_launch = var.public2
tags = {
    Name = var.subnet-name-2
  }
}
# Creating Internet Gateway 
resource "aws_internet_gateway" "igw" {
  vpc_id = aws_vpc.myvpc.id
  tags = {
    Name = var.igw-name
  }
}
# Creating Route Table for Public Subnet
resource "aws_route_table" "public-rt" {
    vpc_id = aws_vpc.myvpc.id
route {
        cidr_block = var.public-rt-cidr1
        gateway_id = aws_internet_gateway.igw.id
    }
tags = {
        Name = var.public-rt-name1
    }
}
# Creating Route Table for Private Subnet
resource "aws_route_table" "private-rt" {
    vpc_id = aws_vpc.myvpc.id
route {
        cidr_block = var.private-rt-cidr2
        gateway_id = aws_internet_gateway.igw.id
    }
tags = {
        Name = var.private-rt-name2
    }
}
resource "aws_route_table_association" "rt_associate_public" {
    subnet_id = aws_subnet.public-subnet.id
    route_table_id = aws_route_table.public-rt.id
}

resource "aws_route_table_association" "rt_associate_private" {
  subnet_id      = aws_subnet.private-subnet.id
  route_table_id = aws_route_table.private-rt.id
}


# Creating Security Group 
resource "aws_security_group" "allow_all_ports" {
  name        = var.sg1-name

  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = var.sg1-name

  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_sg1_ipv4" {
  security_group_id = aws_security_group.allow_all_ports.id
  cidr_ipv4         = var.vpc-cidr
  from_port         = var.from-port-sg1
  ip_protocol       = var.ip-type
  to_port           = var.to-port-sg1
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4s1" {
  security_group_id = aws_security_group.allow_port-3000.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  ip_protocol       = var.ip-val # semantically equivalent to all ports
}
# Creating Security Group 
resource "aws_security_group" "allow_port-3000" {
  name        = var.sg2-name
  vpc_id      = aws_vpc.myvpc.id

  tags = {
    Name = var.sg2-name

  }
}
resource "aws_vpc_security_group_ingress_rule" "allow_sg2_ipv4" {
  security_group_id = aws_security_group.allow_port-3000.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  from_port         = var.from-port-sg2
  ip_protocol       = var.ip-type
  to_port           = var.to-port-sg2
}
resource "aws_vpc_security_group_egress_rule" "allow_all_traffic_ipv4-s2" {
  security_group_id = aws_security_group.allow_all_ports.id
  cidr_ipv4         = aws_vpc.myvpc.cidr_block
  ip_protocol       = var.ip-val # semantically equivalent to all ports
}