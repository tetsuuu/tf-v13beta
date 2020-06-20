locals {
  forEach = {
    demo01 = "fuga"
    demo02 = "piyo"
  }
}

// IAMユーザー作成
module "count_user" {
  count  = 2
  source = "./modules/user"

  name      = "hoge-${format("%02d", count.index + 1)}"
  iam_group = module.count_group.group_name

  depends_on = [module.count_group.group_name]
}

module "for_each_user" {
  for_each = local.forEach
  source   = "./modules/user"

  name      = each.value
  iam_group = module.for_each_group.group_name

  depends_on = [module.for_each_group.group_name]
}

// IAMポリシーの作成
module "gengeral_policy" {
  source = "./modules/policy"

  account_id = data.aws_caller_identity.self.account_id
}

// IAMグループの作成
module "count_group" {
  source = "./modules/group"

  group      = "hogehoge"

  policy_arns = {
    default = module.gengeral_policy.default_policy
  }
}

module "for_each_group" {
  source = "./modules/group"

  group      = "fugapiyo"

  policy_arns = {
    default = module.gengeral_policy.default_policy
  }
}
