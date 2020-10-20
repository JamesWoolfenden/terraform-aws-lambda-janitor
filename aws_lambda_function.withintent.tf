resource "aws_lambda_function" "janitor" {
  description      = var.description
  function_name    = var.name
  filename         = "${path.module}/lambda.zip"
  handler          = var.handler
  memory_size      = var.memory_size
  role             = aws_iam_role.lambda.arn
  runtime          = var.runtime
  source_code_hash = data.archive_file.lambda.output_base64sha256
  tags             = var.common_tags
  timeout          = var.timeout

  lifecycle {
    ignore_changes = [
      last_modified,
      tags,
    ]
  }

  tracing_config {
    mode = "PassThrough"
  }
}
