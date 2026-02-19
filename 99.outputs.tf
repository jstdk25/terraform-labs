output "server_public_ip"{
    description = "Direccion IP PUblica"
    value       = aws_instance.nginx-server.public_ip
    }

output "server_public_dns"{
    description = "Direccion IP Publica"
    value       = aws_instance.nginx-server.public_dns
    }

output "Name"{
    description = "Direccion IP Publica"
    value       = aws_instance.nginx-server.tags.Name
    }

output "Owner"{
    description = "Direccion IP Publica"
    value       = aws_instance.nginx-server.tags.Owner
    }

