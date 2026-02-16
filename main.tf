provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "nginx-server"{
    ami             = "ami-05efc83cb5512477c"
    instance_type   = "t3.micro"
}