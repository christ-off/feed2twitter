##################################################################################
# Resources for LAMBDA
##################################################################################

############
#  LAMBDA
############

resource "aws_s3_bucket_object" "feed2twitter-lambda-storage" {
  key = "feed2twitter-lambda"
  bucket = "${aws_s3_bucket.feed2twitter-bucket.id}"
  source = "../target/feed2twitter-lambda.zip"
  content_type = "application/zip"
  acl = "private"
  # etag is here to detect changes
  etag = "${filemd5("../target/feed2twitter-lambda.zip")}"
}

resource "aws_lambda_function" "feed2twitter-lambda" {
  function_name = "feed2twitter-lambda"
  description = "Triggered by Schedule read feed and post"
  s3_bucket = "${aws_s3_bucket.feed2twitter-bucket.bucket}"
  s3_key = "${aws_s3_bucket_object.feed2twitter-lambda-storage.key}"

  runtime = "nodejs10.x"
  handler = "src/handlers/process-atom-feed.processAtomFeed"

  role = "${aws_iam_role.feed2twitter-role.arn}"

  timeout = "120"
  memory_size = "128"

  source_code_hash = "${filebase64sha256("../target/feed2twitter-lambda.zip")}"

  environment {

    variables = {
      feed = "https://post-tenebras-lire.net/feed.xml"
      consumer_key = "${var.consumer_key}"
      consumer_secret = "${var.consumer_secret}"
      access_token = "${var.access_token}"
      access_token_secret = "${var.access_token_secret}"
    }

  }
}

############
# ROLES
############

resource "aws_iam_role" "feed2twitter-role" {
  name = "feed2twitter-role"
  description = "Role for lambdas to read DynamoDB table"
  assume_role_policy = "${file("./policies/feed2twitter-policy.json")}"
}

resource "aws_iam_role_policy_attachment" "feed2twitter-lambda-role-cloudwatchfullaccess" {
  role = "${aws_iam_role.feed2twitter-role.name}"
  policy_arn = "arn:aws:iam::aws:policy/CloudWatchLogsFullAccess"
}

############
# LOGS
############

resource "aws_cloudwatch_log_group" "feed2twitter-log-group" {
  name = "/aws/lambda/${aws_lambda_function.feed2twitter-lambda.function_name}"
  retention_in_days = "7"
}

############
#  Events
############

resource "aws_cloudwatch_event_rule" "every-day-09-11-GMT" {
  name = "every-day-09-11-GMT"
  description = "Trigger posting every day 09-11-GMT"
  schedule_expression = "cron(11 09 * * ? *)"
  is_enabled = "true"
}

resource "aws_cloudwatch_event_target" "every-day-11-11-target" {
  rule = "${aws_cloudwatch_event_rule.every-day-09-11-GMT.name}"
  arn = "${aws_lambda_function.feed2twitter-lambda.arn}"
}

# lambda permission ? Not IAM role ?
# See https://stackoverflow.com/a/44313827/95040
data "aws_caller_identity" "current-caller" {
  # Retrieves information about the AWS account corresponding to the
  # access key being used to run Terraform, which we need to populate
  # the "source_account" on the permission resource.
}

resource "aws_lambda_permission" "allow-cloudwatch-feed2twitter-lambda" {
  statement_id   = "AllowExecutionFromCloudWatch"
  action         = "lambda:InvokeFunction"
  function_name  = "${aws_lambda_function.feed2twitter-lambda.function_name}"
  principal      = "events.amazonaws.com"
  source_account = "${data.aws_caller_identity.current-caller.account_id}"
  source_arn     = "${aws_cloudwatch_event_rule.every-day-09-11-GMT.arn}"
}