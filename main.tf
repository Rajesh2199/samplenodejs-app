resource "aws_instance" "node-app_server" {
  ami           = "ami-026b57f3c383c2eec"
  instance_type = "t2.micro"

  tags = {
    Name = "WeatherApp"
  }