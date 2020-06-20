// IAMユーザーの個人設定の基本的な権限
resource "aws_iam_policy" "default" {
  name   = "basicPolicy"
  policy = data.aws_iam_policy_document.basic_policy.json
}
