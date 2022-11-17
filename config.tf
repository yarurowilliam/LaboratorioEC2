provider "aws" {
  region = "eu-west-2"
  access_key = "AKIASRWOPX45EPQDYL26"
  secret_key = "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"
}

resource "aws_instance" "williamyaruro_lab" {
  ami           = "ami-0648ea225c13e0729"
  instance_type = "t2.micro"

  tags = {
    Name = "ec2ServerTerraform"
  }
}