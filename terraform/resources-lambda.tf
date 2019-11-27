############
#  LAMBDA
############

resource "aws_s3_bucket_object" "feed2twitter_lambda-storage" {
  key = "feed2twitter-lambda"
  bucket = aws_s3_bucket.feed2twitter-bucket.id
  source = "../target/feed2twitter-lambda.zip"
  content_type = "application/zip"
  acl = "private"
  # etag is here to detect changes
  etag = filemd5("../target/feed2twitter-lambda.zip")
}

resource "aws_lambda_function" "feed2twitter-function" {
  function_name = "feed2twitter-lambda"
  description = "Triggered by Schedule read feed and post"
  s3_bucket = aws_s3_bucket.feed2twitter-bucket.bucket
  s3_key = aws_s3_bucket_object.feed2twitter_lambda-storage.key
  runtime = "nodejs12.x"
  handler = "src/handlers/process-atom-feed.processAtomFeed"

  role = aws_iam_role.feed2twitter-role.arn

  timeout = "60"
  memory_size = "128"

  source_code_hash = filebase64sha256("../target/feed2twitter-lambda.zip")

  environment {
    variables = {
      feed = var.feed
      consumer_key = var.consumer_key
      consumer_secret = var.consumer_secret
      access_token = var.access_token
      access_token_secret = var.access_token_secret
    }
  }
}

############
# ROLES
############

resource "aws_iam_role" "feed2twitter-role" {
  name = "feed2twitter-role"
  description = "Role for lambda"
  assume_role_policy = file("./policies/feed2twitter-policy.json")
}

data "aws_iam_policy_document" "dynamodb-document" {
  statement {
    actions = ["dynamodb:*"]
    resources = ["*"]
    effect = "Allow"
  }
}

resource "aws_iam_policy" "dynamodb-policy" {
  name = "dynamodb_read-policy"
  path = "/"
  policy = data.aws_iam_policy_document.dynamodb-document.json
}

resource "aws_iam_role_policy_attachment" "feed2twitter_dynamodb_policy-attachment" {
  role       = aws_iam_role.feed2twitter-role.name
  policy_arn = aws_iam_policy.dynamodb-policy.arn
}

resource "aws_iam_role_policy_attachment" "feed2twitter_cloudwatch_role-attachment" {
  role = aws_iam_role.feed2twitter-role.name
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

###########
# TRIGGER
###########

resource "aws_cloudwatch_event_rule" "every_day-rule" {
  name = "every_day"
  depends_on = [ aws_lambda_function.feed2twitter-function ]
  is_enabled = true
  schedule_expression = "cron(07 05 ? * MON,WED,THU,SUN *)"
}

resource "aws_cloudwatch_event_target" "every_day_1111-target" {
  # target_id = "demo_lambda" // Worked for me after I added `target_id`
  rule = aws_cloudwatch_event_rule.every_day-rule.name
  arn = aws_lambda_function.feed2twitter-function.arn
}

resource "aws_lambda_permission" "every_day_1111-permission" {
  statement_id = "AllowExecutionFromCloudWatch"
  action = "lambda:InvokeFunction"
  function_name = aws_lambda_function.feed2twitter-function.function_name
  principal = "events.amazonaws.com"
  source_arn = aws_cloudwatch_event_rule.every_day-rule.arn
}