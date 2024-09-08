resource "aws_route_table" "public" {
  vpc_id = aws_vpc.main.id
  tags = {
    Name = "Paris-Public-Route-Table"
  }
}

resource "aws_route" "public_to_internet" {
  route_table_id     = aws_route_table.public.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id         = aws_internet_gateway.main.id
}

