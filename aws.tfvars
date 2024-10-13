
vpc-cidr-root = "10.0.0.0/16"

vpc-name-root = "myvpc"


subnet-cidr1-root = "10.0.1.0/24"
 

subnet-az1-root = "us-east-1a"
 

subnet-name-1-root = "Public Subnet"
 

public1-root = false
  

subnet-cidr2-root = "10.0.2.0/24"   


subnet-az2-root = "us-east-1a"
 

subnet-name-2-root =  "Private Subnet"
 
 

public2-root = false
  
igw-name-root = "igw"

  
public-rt-cidr1-root = "0.0.0.0/0"

rt-name1-root = "Public Subnet Route Table"

private-rt-cidr2-root = "0.0.0.0/0"

  
rt-name2-root = "Route Table for the Private Subnet"
ami-1-id-root = "ami-0ebfd941bbafe70c6"
ami-2-id-root = "ami-0ebfd941bbafe70c6"
instance-type-root = "t2.micro" 
instance-1-name-root = "My Public Instance"  
instance-2-name-root = "My Private Instance"  
key-name-root = "tests"
associate-public-ip-address-root = true
sg1-name-root = "allow-all-ports"
sg2-name-root = "allow_port-3000"
