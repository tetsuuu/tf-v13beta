// デフォルトのIAMポリシーarn出力
output "default_policy" {
  value = aws_iam_policy.default.arn
}
