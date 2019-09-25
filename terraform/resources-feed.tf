####################
# AUTHOR Tables
####################

resource "aws_dynamodb_table" "feed-table" {
  name = "Feed"
  read_capacity = 1
  write_capacity = 1
  hash_key = "Id"
  attribute {
    name = "Id"
    type = "S"
  }
}