variable "vpc-cidr-root" {
  type        = string
  default     = "10.0.0.0/16"
}
variable "vpc-name-root" {
  type        = string
  }

variable "aws_internet_gateway_root" {
    type = string
  
}
variable "subnet-cidr1-root" {
  type        = string
 
}
variable "subnet-az1-root" {
  type        = string
 
}
variable "subnet-name-1-root" {
  type        = string
 
}
variable "public1-root" {
  type        = bool
  default = false
  }


variable "subnet-cidr2-root" {
  type        = string

}
variable "subnet-az2-root" {
  type        = string
 
}
variable "subnet-name-2-root" {
  type        = string
 
}

variable "public2-root" {
  type        = bool
  default = false
  }
  variable "igw-name-root" {
  type        = string
  }
 variable "public-rt-cidr1-root" {
  type        = string
  }

  variable "public-rt-name1-root" {
  type        = string
  }
  
  variable "private-rt-cidr2-root" {
  type        = string
  }
 variable "private-rt-name2-root" {
  type        = string
  }
  variable "associate-public-ip-address-root" {
  type        = bool
  default = true
  }
  variable "private_gw_egress_root" {
  type = string
}

variable "public_gw_egress_root" {
  type = string
}

variable "ip-type-root" {
  type        = string
  }
variable "sg1-name-root" {
  type        = string
  }

variable "sg2-name-root" {
  type        = string
  }
variable "ip-val-root" {
  type = string
  
}
variable "from-port-sg1-root" {
  type = number
}
variable "from-port-sg2-root" {
 type = number
}
variable "to-port-sg1-root" {
  type = number
}
variable "to-port-sg2-root" {
 type = number
}

variable "ami-1-id-root" {
  type        = string

}
variable "instance-type-root" {
  type        = string
  }

variable "instance-1-name-root" {
  type        = string
  }

variable "key-name-root" {
  type        = string
 
}

variable "instance-2-name-root" {
  type        = string
 
}
variable "ami-2-id-root" {
  type        = string

}
