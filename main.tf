#creating Security group
resource "aws_security_group" "securitygroupTera01" {
  name_prefix = "my-tera-security-group01"
  description = "My testing to create security group from terraform"

  # Ingress rule for Port 22 (SSH)
  dynamic "ingress" {
    for_each = var.list
    content {
      from_port   = ingress.value
      to_port     = ingress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }

  # Ingress rule for Port 22 (SSH)
  dynamic "egress" {
    for_each = var.list
    content {
      from_port   = egress.value
      to_port     = egress.value
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  }
}

#creating the ec2 machine
resource "aws_instance" "EC2Tera" {
  ami               = "ami-0f5ee92e2d63afc18"
  availability_zone = "ap-south-1a" # Replace with your desired AMI ID
  instance_type     = "t2.micro"    # Replace with your desired instance type
  tags = {
    Name = "ec2Terraform"
  }
  lifecycle {
    ignore_changes = [ tags ]
  }
}
