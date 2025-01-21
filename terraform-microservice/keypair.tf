resource "aws_key_pair" "main" {
  key_name   = "las_llaves"
  public_key = file("${path.module}/las_llaves.pub")
}