resource "aws_launch_configuration" "example_lc" {
  name_prefix   = "terraform-lc-example-"
  image_id      = "ami-14c5486b"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}