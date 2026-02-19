variable "ami_id"{
    description = "Id de la AMI"
    default    = "ami-05efc83cb5512477c"
}
variable "type"{
    description = "Tipo de Instancia"
    default    = "t3.micro"
}

variable "server_name"{
    description = "Nombre del servidor Web"
    default    = "web_server"
}

variable "enviroment"{
    description = "Ambiente de desarrollo"
    default    = "dev"
}