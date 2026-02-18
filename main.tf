provider "aws" {
    region = "us-east-2"
}

resource "aws_instance" "nginx-server"{
    ami             = "ami-05efc83cb5512477c"
    instance_type   = "t3.micro"
<<<<<<< HEAD
<<<<<<< HEAD
=======
=======
>>>>>>> release/v.3.0

    user_data = <<-EOF
                #!/bin.bash
                sudo yum install -y nginx
                sudo systemctl enable nginx
                sudo syttemctl start nginx
                EOF
<<<<<<< HEAD

>>>>>>> develop
=======
key_name =aws_key_pair.nginex-server-ssh.key_name
vpc_security_group_ids = [aws_security_group.nginex-server-sg.id]
}

resource "aws_key_pair" "nginex-server-ssh"{
    key_name    = "nginex-server"
    public_key  = file("nginex-server.pub")

}

resource "aws_security_group" "nginex-server-sg"{
    name        = "nginex-server"
    description = "Allow SSH and HTTP"

    ingress {
        from_port   = 22
        to_port     = 22
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    ingress {
        from_port   = 80
        to_port     = 80
        protocol    = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress{
        from_port   = 0
        to_port     = 0
        protocol    = "-1"
        cidr_blocks = ["0.0.0.0/0"]

    }
>>>>>>> release/v.3.0
}