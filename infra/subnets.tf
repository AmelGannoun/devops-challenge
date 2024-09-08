resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-3a"  
  map_public_ip_on_launch = true
  
  tags = {
    Name = "Paris-Bird-Public-Subnet"
  }

}
