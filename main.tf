terraform {
  required_providers {
    spacelift = {
      source = "spacelift-io/spacelift"
    }
  }
}

resource "spacelift_aws_integration" "aws_integration" {
  name = "aws-${var.aws_account_id}"
  
  role_arn = "arn:aws:iam::${var.aws_account_id}:role/Spacelift"
  
  # Default region - can be made configurable if needed
  default_region = "us-west-1"
  
  # Generate a unique stack ID for this integration
  stack_id = "aws-integration-${var.aws_account_id}"
}
