############
# LOGS
############

resource "aws_cloudwatch_log_group" "feed2twitter-log-group" {
  name = "/aws/lambda/${aws_lambda_function.feed2twitter-function.function_name}"
  retention_in_days = "7"
}
