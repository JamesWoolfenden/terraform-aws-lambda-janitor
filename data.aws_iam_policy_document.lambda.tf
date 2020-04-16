data "aws_iam_policy_document" "lambda" {

  statement {
    actions = [
      "lambda:InvokeFunction",
      "lambda:ListFunctions",
      "lambda:ListVersionsByFunction",
      "lambda:ListAliases",
      "lambda:GetAlias"
    ]

    resources = ["*"]
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
