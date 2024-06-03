resource "aws_iam_role" "apim_role" {
  name                 = format("%s_%s_apim-dev", var.account_name, var.environment)
  description          = "APIM Role for APIs deployment"
  assume_role_policy   = data.aws_iam_policy_document.apim_role_trust_relationship.json
  max_session_duration = 28800
  tags = {
    TeamName  = "DevopsAndCloud"
    federated = "true"
    usage     = "APIM Team"
  }
}

resource "aws_iam_policy" "apim_policy" {
  name        = format("%s_%s_apim_dev_policy", var.account_name, var.environment)
  path        = "/"
  description = "APIM Policy for API Dev Role"
  policy      = data.aws_iam_policy_document.apim_role_policy.json
  tags = {
    TeamName  = "DevopsAndCloud"
    federated = "true"
    usage     = "APIM Team"
  }
}

resource "aws_iam_role_policy_attachment" "apim_role_policy_attach" {
  role       = aws_iam_role.apim_role.name
  policy_arn = aws_iam_policy.apim_policy.arn
}