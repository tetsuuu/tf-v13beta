resource "aws_iam_user" "default" {
  name          = var.name
  force_destroy = false

  tags = {
    Group = var.iam_group
  }
}
