resource "aws_instance" "this" {      ########### EC2 MODULE
  ami                    = var.ami_id
  instance_type          = "t3.small"
  vpc_security_group_ids = [var.sg_id]

  tags = var.tags
}


















resource "aws_security_group" "practice_sg_ec2" {
  name        = "practice_sg_ec2"
  description = "practice_sg_ec2"

  ingress {
    from_port   = 22
    to_port     = 22
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"] # Allows all outbound traffic
  }

  tags = {
      project = "expense"
      environment = "dev"
      Name = "expense-dev-ec2-sg"
  }
}

