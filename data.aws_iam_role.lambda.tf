resource "aws_iam_role" "lambda" {
  name  = "janitor"
 
  assume_role_policy=""
}

resource "aws_iam_role_policy" "janitor" {
  role=aws_iam_role.lambda.name
   policy= data.aws_iam_policy_document.lambda.json
}
