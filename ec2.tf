resource "aws_instance" "Haproxy_Head" {
  ami                         = var.ami
  instance_type               = var.instance_type
  associate_public_ip_address = true
  availability_zone           = var.az1
  subnet_id                   = aws_subnet.public1.id
  key_name                    = var.key_name
  vpc_security_group_ids      = [aws_security_group.web_sg.id]
  tags                        = var.tags_ec2_pub
}

resource "aws_instance" "Haproxy_backend1" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = var.az1
  subnet_id              = aws_subnet.private1.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg2.id]
  count                  = var.node_count
  tags                   = var.tags_ec2_priv
}

resource "aws_instance" "Haproxy_backend2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  availability_zone      = var.az2
  subnet_id              = aws_subnet.private1.id
  key_name               = var.key_name
  vpc_security_group_ids = [aws_security_group.web_sg2.id]
  count                  = var.node_count
  tags                   = var.tags_ec2_priv
}
