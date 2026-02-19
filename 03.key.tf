resource "aws_key_pair" "nginex-server-ssh"{
    key_name    = "${var.server_name}-keys"
    public_key  = file("nginex-server.pub")

}