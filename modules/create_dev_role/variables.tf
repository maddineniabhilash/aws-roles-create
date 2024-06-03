variable "account_name" {
  description = "The name of the account"
  type        = string
}

variable "environment" {
  description = "The environment"
  type        = string
}

variable "aws_account_id" {
  description = "The ID of the AWS account"
  type        = string
}

variable "region" {
  description = "The region"
  type        = string
  default     = "us-east-1"
}