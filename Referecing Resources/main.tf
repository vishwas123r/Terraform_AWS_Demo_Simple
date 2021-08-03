provider "aws" {
    region = "us-east-2"
    access_key = "AKIA2MWNQBW36DB554LI"
    secret_key = "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"
}

resource "aws_vpc" "vpc1" {
    cidr_block =  "10.0.0.0/21" 
    tags = {
      Name = "happy_VPC"
    }
}

resource "aws_subnet" "subnet1" {
  vpc_id     = aws_vpc.vpc1.id
  cidr_block = "10.0.1.0/24"

  tags = {
    Name = "happy network"
  }
}