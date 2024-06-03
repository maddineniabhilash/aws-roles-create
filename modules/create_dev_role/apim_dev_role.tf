
data "aws_iam_policy_document" "apim_role_policy" {
  statement {
    sid    = "VisualEditor0"
    effect = "Allow"
    actions = [
      "dynamodb:PutItem",
      "dynamodb:DescribeTable",
      "dynamodb:DeleteItem",
      "dynamodb:GetItem"
    ]
    resources = [
      format("arn:aws:dynamodb:ap-southeast-2:%s:table/%s_%s-terragrunt-lock-table", var.aws_account_id, var.account_name, var.environment)
    ]
  }
  statement {
    sid    = "VisualEditor1"
    effect = "Allow"
    actions = [
      "wafv2:ListWebACLs",
      "wafv2:AssociateWebACL",
      "route53:GetChange",
      "wafv2:GetWebACLForResource",
      "route53:GetHostedZone",
      "wafv2:GetWebACL",
      "s3:GetObjectVersionAttributes",
      "s3:GetBucketPolicy",
      "elasticloadbalancing:DescribeLoadBalancers",
      "s3:GetEncryptionConfiguration",
      "elasticloadbalancing:DescribeListeners",
      "route53:ListResourceRecordSets",
      "elasticloadbalancing:CreateRule",
      "s3:GetBucketPublicAccessBlock",
      "apigateway:*",
      "elasticloadbalancing:DescribeTags",
      "route53:ListHostedZones",
      "elasticloadbalancing:CreateTargetGroup",
      "route53:ChangeResourceRecordSets",
      "s3:GetObjectAttributes",
      "s3:GetBucketVersioning",
      "route53:ListTagsForResource",
      "elasticloadbalancing:DescribeLoadBalancerAttributes",
      "s3:GetObject",
      "iam:CreateServiceLinkedRole",
      "elasticloadbalancing:DescribeTargetGroupAttributes",
      "elasticloadbalancing:DescribeTargetGroups",
      "elasticloadbalancing:DescribeRules",
      "sts:GetCallerIdentity",
      "s3:GetObjectVersion"
    ]
    resources = [
      "*"
    ]
  }
}
