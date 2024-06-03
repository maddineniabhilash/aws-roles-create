data "aws_iam_policy_document" "apim_role_trust_relationship" {
  statement {
    actions = ["sts:AssumeRole"]
    principals {
      identifiers = ["arn:aws:iam::369170011601:role/payer_prod_admin"]
      type        = "AWS"
    }
  }

  statement {
    actions = ["sts:AssumeRoleWithWebIdentity"]
    principals {
      identifiers = ["arn:aws:iam::${var.aws_account_id}:oidc-provider/token.actions.githubusercontent.com"]
      type        = "Federated"
    }
    condition {
      test     = "StringLike"
      values   = ["repo:carsales-PRIVATE/carsales.apim:*"]
      variable = "token.actions.githubusercontent.com:sub"
    }
  }
}