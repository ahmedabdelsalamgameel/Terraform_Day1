resource "aws_subnet" "public_subnet_1" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "${var.reg}a"
  cidr_block = var.pc_sub_1_cidr
  map_public_ip_on_launch="true"
}
resource "aws_subnet" "public_subnet_2" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "${var.reg}b"
  cidr_block = var.pc_sub_2_cidr
  map_public_ip_on_launch="true"
}
resource "aws_subnet" "private_subnet_1" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "${var.reg}a"
  cidr_block = var.pt_sub_1_cidr
}
resource "aws_subnet" "private_subnet_2" {
  vpc_id     = aws_vpc.mainvpc.id
  availability_zone = "${var.reg}b"
  cidr_block = var.pt_sub_2_cidr
}

