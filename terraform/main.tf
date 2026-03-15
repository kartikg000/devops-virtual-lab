provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "devops_server" {
  ami           = "ami-0c02fb55956c7d316"
  instance_type = "t2.micro"
  key_name      = "my-key" # MAKE SURE YOU HAVE A KEY PAIR NAMED THIS IN AWS
  tags = {
    Name = "DevOps-Lab-Server"
  }
}
