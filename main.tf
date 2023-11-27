provider "aws" {
  region = "eu-north-1"
}

resource "aws_instance" "test_instance" {
  ami           = "ami-040bf52c6d056e2e8"
  instance_type = "t3.micro"

  key_name = "jenkinskey"

  tags = {
    Name = "Test-Instance"
  }
}
