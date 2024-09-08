resource "aws_subnet" "public" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.0.0/24"
  availability_zone = "eu-west-3a"  
  tags = {
    Name = "Paris-Bird-Public-Subnet"
  }
}

resource "aws_subnet" "private" {
  vpc_id            = aws_vpc.main.id
  cidr_block        = "10.0.1.0/24"
  availability_zone = "eu-west-3a"  
  tags = {
    Name = "Paris-Bird-Private-Subnet"
  }
}