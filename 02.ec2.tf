resource "aws_instance" "nginx-server"{
    ami             = var.ami_id
    instance_type   = var.type

    user_data = <<-EOF
                #!/bin/bash
                sudo yum install -y nginx
                sudo systemctl enable nginx
                sudo syttemctl start nginx
                EOF

key_name =aws_key_pair.nginex-server-ssh.key_name
vpc_security_group_ids = [aws_security_group.nginex-server-sg.id]

tags = {
    Name        = "${var.server_name}"
    Enviroment  = "test"
    Owner       = "frdsoto.25@gmail.com"
    Team        = "DevOps"
    Project     = "Webinar"
    }
}