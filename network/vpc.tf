resource "aws_vpc" "mainvpc" {
  cidr_block = var.m_vpc_cidr
}