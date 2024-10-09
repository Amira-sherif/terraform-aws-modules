module "mynetwork" {
    source = "./modules/network"
    vpc-cidr = var.vpc-cidr-root 
    
    vpc-name = var.vpc-name-root 
    
    subnet-cidr1 = var.subnet-cidr1-root 
    
    subnet-az1 = var.subnet-az1-root  
    subnet-name-1 = var.subnet-name-1-root   
    public1 = var.public1-root 
    subnet-cidr2 = var.subnet-cidr2-root 
    subnet-az2 = var.subnet-az2-root 
    subnet-name-2 = var.subnet-name-2-root 
    public2 = var.public2-root 
    igw-name = var.igw-name-root

    public-rt-cidr1 = var.public-rt-cidr1-root
    public-rt-name1 = var.public-rt-name1-root 
    
    private-rt-name2 = var.private-rt-name2-root
    private-rt-cidr2 = var.private-rt-cidr2-root

    public_gw_egress = var.public_gw_egress_root
    private_gw_egress = var.private_gw_egress_root

    ip-type = var.ip-type-root
    sg1-name = var.sg1-name-root
    sg2-name = var.sg2-name-root
    ip-val = var.ip-type-root 
    from-port-sg1 = var.from-port-sg1-root 
    from-port-sg2 = var.from-port-sg2-root 
    to-port-sg1 = var.to-port-sg1-root
    to-port-sg2 = var.to-port-sg1-root
}
module "myec2" {
    source = "./modules/ec2"   
    ami-1-id = var.ami-1-id-root
    ami-2-id = var.ami-2-id-root
    instance-type = var.instance-type-root 
    instance-1-name = var.instance-1-name-root
    instance-2-name = var.instance-2-name-root  
    key-name = var.key-name-root
    sgid1 = module.mynetwork.security-group1-id
    sgid2 = module.mynetwork.security-group2-id
    subnet-id1 = module.mynetwork.subnet-id1
    subnet-id2 = module.mynetwork.subnet-id2

}