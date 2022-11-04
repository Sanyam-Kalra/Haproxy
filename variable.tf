variable "cidr_block_vpc" {
  default = "10.0.0.0/20"
}

variable "tags_vpc" {
  default = {
    Name = "demo"
  }
}

variable "subnet_cidr" {
  default = "10.0.0.0/21"

}
variable "subnet_cidr_private1" {
  default = "10.0.15.0/26"

}

variable "subnet_cidr_private2" {
  default = "10.0.15.192/26"

}

variable "subnet_tags" {
  default = {
    Name = "demo"
  }

}

variable "igw_tags" {
  default = {
    Name = "demo"
  }

}

# variable "private1" {
#   default = ""
# }

# variable "private2" {
#  default =""
# }

variable "az1" {
  default = ""

}
variable "az2" {
  default = ""

}

variable "tags_nat" {
  default = {
    Name = "demo"
  }
}

variable "rt_tags" {
  default = {
    Name = "demo"
  }
}


variable "key_name" {
  default = ""
}

variable "instance_type" {
  default = "t2.micro"
}

variable "node_count" {
  default = "2"
}

variable "tags_ec2_pub" {
  default = {
    Name = "demo"
  }
}

variable "tags_ec2_priv" {
  default = {
    Name = "demo"
  }
}

variable "ami" {
  default = "ami-08c40ec9ead489470"
}

variable "rt_tags_pvt" {
  default = {}
}

variable "subnet_tags_pvt" {
  default = {}
}