variable "vpc-cidr" {
  type        = string
  default     = "10.0.0.0/16"
}
variable "vpc-name" {
  type        = string
  }



variable "subnet-cidr1" {
  type        = string
 
}
variable "subnet-az1" {
  type        = string
 
}
variable "subnet-name-1" {
  type        = string
 
}
variable "public1" {
  type        = bool
  default = false
  }


variable "subnet-cidr2" {
  type        = string

}
variable "subnet-az2" {
  type        = string
 
}

variable "subnet-name-2" {
  type        = string
 
}
variable "public2" {
  type        = bool
  default = false
  }
  variable "igw-name" {
  type        = string
  }
  variable "public-rt-cidr1" {
  type        = string
  }

  variable "public-rt-name1" {
  type        = string
  }
  
  variable "private-rt-cidr2" {
  type        = string
  }
 variable "private-rt-name2" {
  type        = string
  }

variable "associate-public-ip-address" {
  type        = bool
  default = true
  }
  variable "private_gw_egress" {
  type = string
}

variable "public_gw_egress" {
  type = string
}

variable "sg1-name" {
  type        = string
  }
variable "ip-type" {
  type        = string
  }
variable "sg2-name" {
  type        = string
  }
variable "ip-val" {
  type = string
  
}
variable "from-port-sg1" {
  type = number
}
variable "from-port-sg2" {
 type = number
}
variable "to-port-sg1" {
  type = number
}
variable "to-port-sg2" {
 type = number
}