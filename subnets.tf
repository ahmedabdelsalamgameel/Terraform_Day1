resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "us-west-1a"
  cidr_block = "10.0.1.0/24"
  map_public_ip_on_launch="true"
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "us-west-1b"
  cidr_block = "10.0.2.0/24"
  map_public_ip_on_launch="true"
}
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "us-west-1a"
  cidr_block = "10.0.3.0/24"
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "us-west-1b"
  cidr_block = "10.0.4.0/24"
}

