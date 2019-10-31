##################################################################################
# VARIABLES
##################################################################################

variable "region" {
  default = "us-east-2"
}

variable "security_group_name" {
  description = "The name of the security group"
  type = string
  default = "terraform-example-instance"
}


##################################################################################
# PROVIDERS
##################################################################################

provider "aws" {
  region = var.region
}


##################################################################################
# RESOURCES
##################################################################################

# SECURITY GROUP #
resource "aws_security_group" "instance" {
  name = var.security_group_name

  # 8080 port access
  ingress {
    from_port = 8080
    to_port = 8080
    protocol = "tcp"
    cidr_blocks = [
      "0.0.0.0/0"]
  }
}

# aws ec2 instance
resource "aws_instance" "example" {
  ami = "ami-0c55b159cbfafe1f0"
  instance_type = "t2.micro"
  vpc_security_group_ids = [aws_security_group.instance.id]

  user_data = <<-EOF
              #!/bin/bash
              echo "Hello, World" > index.html
              nohup busybox httpd -f -p 8080 &
              EOF

  tags = {
    Name = "terraform-example"
  }
}

##################################################################################
# OUTPUT
##################################################################################

output "public_ip" {
  value = aws_instance.example.public_ip
  description = "The public IP of the Instance"
}


######## Testing ###########################
# curl http://<EC2_INSTANCE_PUBLIC_IP>:8080
############################################