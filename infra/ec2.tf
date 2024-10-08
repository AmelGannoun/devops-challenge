resource "aws_instance" "bird-instance" {
  ami           = "ami-04a92520784b93e73"  
  instance_type      = "t2.micro"
  key_name           = "bird-key-pair-app"
  subnet_id    = aws_subnet.public.id
  security_groups = [aws_security_group.allow_http_https.id]

  tags = {
    Name = "Paris-bird-instance"
  }


  user_data = <<-EOF
    #!/bin/bash
    sudo apt-get update -y
    sudo apt install -y docker
    sudo service docker start
    sudo usermod -aG docker ec2-user
  EOF
}

