resource "aws_vpc" "main" {
  cidr_block           = var.vpc-cidr
  enable_dns_hostnames = true
  tags = {
    Name = "tf-main"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public-cidr

  tags = {
    Name = "public-subnet"
  }
}

resource "aws_subnet" "public-1" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public1-cidr

  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private-cidr

  tags = {
    Name = "private-subnet"
  }
}
