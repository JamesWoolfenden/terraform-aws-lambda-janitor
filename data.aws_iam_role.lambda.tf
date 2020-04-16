resource "aws_iam_role" "lambda" {
  name = "janitor"

  assume_role_policy = <<POLICY
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Effect": "Allow",
      "Principal": {
        "Service": "lambda.amazonaws.com"
      },
      "Action": "sts:AssumeRole"
    }
  ]
}
POLICY
}

resource "aws_iam_role_policy" "janitor" {
  role   = aws_iam_role.lambda.name
  policy = data.aws_iam_policy_document.lambda.json
}
