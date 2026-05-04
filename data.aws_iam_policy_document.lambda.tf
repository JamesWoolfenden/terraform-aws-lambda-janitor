data "aws_iam_policy_document" "lambda" {
  # checkov:skip=CKV_AWS_290: IAM policy requires broad write access for this module to function
  # checkov:skip=CKV_AWS_355: IAM policy requires wildcard resource for this module to function
  #checkov:skip=CKV_AWS_111:
  statement {
    actions = [
      "lambda:InvokeFunction",
      "lambda:ListFunctions",
      "lambda:ListVersionsByFunction",
      "lambda:ListAliases",
      "lambda:GetAlias"
    ]

    resources = [
      aws_lambda_function.janitor.arn,
    "${aws_lambda_function.janitor.arn}/*"]
  }

  statement {
    actions = [
      "logs:CreateLogGroup",
      "logs:CreateLogStream",
      "logs:PutLogEvents",
    ]

    resources = ["arn:aws:logs:*:*:*"]
  }

  statement {
    actions = [
      "ec2:CreateNetworkInterface",
      "ec2:DescribeNetworkInterfaces",
      "ec2:DeleteNetworkInterface"
    ]
    resources = ["*"]
  }
}
