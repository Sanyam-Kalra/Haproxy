cidr_block_vpc = "10.0.0.0/20"

tags_vpc = {
  Name = "Haproxy"
}

tags_nat = {
  Name = "Haproxy_nat"
}

tags_ec2_priv = {
  Name = "Haproxy_Backend"
}

tags_ec2_pub = {
  Name = "Haproxy_head"
}

subnet_cidr = "10.0.0.0/21"

subnet_cidr_private1 = "10.0.15.0/26"

subnet_cidr_private2 = "10.0.15.192/26"

subnet_tags = {
  Name = "Haproxy"
}

igw_tags = {
  Name = "Haproxy_igw"
}

az2 = "us-east-1d"

az1 = "us-east-1d"

rt_tags = {
  Name = "Haproxy_rt"
}

key_name = "haproxy"

node_count = "2"

instance_type = "t2.micro"

ami = "ami-08c40ec9ead489470"

rt_tags_pvt = {
  Name = "Haproxy Priavte rt"
}

subnet_tags_pvt = {
Name = "Haproxy Private Subnet"
}
