output "role_arn" {
  description = "Role ARN"
  value       = aws_iam_role.apim_role.arn
}

output "role_name" {
  description = "Role Name"
  value       = aws_iam_role.apim_role.name
}

output "policy_name" {
  description = "Policy Name"
  value       = aws_iam_policy.apim_policy.name
}
output "policy_arn" {
  description = "Policy ARN"
  value       = aws_iam_policy.apim_policy.arn
}