resource "aws_instance" "bird-instance" {
  image_id           = "ami-04a92520784b93e73"  
  instance_type      = "t2.micro"
  key_name           = "bird-key-pair-app"
  subnet_id    = aws_subnet.public.id
  security_groups = [aws_security_group.allow_http_https.id]

  tags = {
    Name = "Paris-bird-instance"
  }
}

