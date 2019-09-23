####################
# AUTHOR Tables
####################

resource "aws_dynamodb_table" "authors-table" {
  name = "Authors"
  read_capacity = 1
  write_capacity = 1
  hash_key = "Author"
  attribute {
    name = "Author"
    type = "S"
  }
}

resource "aws_dynamodb_table_item" "Desienne-Stephane" {
  table_name = "${aws_dynamodb_table.authors-table.name}"
  hash_key   = "${aws_dynamodb_table.authors-table.hash_key}"
  item = <<ITEM
{
  "Author": {"S": "Desienne, Stéphane"},
  "twitterHandle": {"S": "@DesienneAuteur"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Roch-Michael" {
  table_name = "${aws_dynamodb_table.authors-table.name}"
  hash_key   = "${aws_dynamodb_table.authors-table.hash_key}"
  item = <<ITEM
{
  "Author": {"S": "Roch, Michael"},
  "twitterHandle": {"S": "@MchlRoch"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Louapre-David" {
  table_name = "${aws_dynamodb_table.authors-table.name}"
  hash_key   = "${aws_dynamodb_table.authors-table.hash_key}"
  item = <<ITEM
{
  "Author": {"S": "Louapre, David"},
  "twitterHandle": {"S": "@dlouapre"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Dubuisson-Marc" {
  table_name = "${aws_dynamodb_table.authors-table.name}"
  hash_key   = "${aws_dynamodb_table.authors-table.hash_key}"
  item = <<ITEM
{
  "Author": {"S": "Dubuisson, Marc"},
  "twitterHandle": {"S": "@Unpied"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Afflatet-Bernard" {
  table_name = "${aws_dynamodb_table.authors-table.name}"
  hash_key   = "${aws_dynamodb_table.authors-table.hash_key}"
  item = <<ITEM
{
  "Author": {"S": "Afflatet, Bernard"},
  "twitterHandle": {"S": "@BernardAfflatet"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Adelstein, Jake" {
  table_name = "${aws_dynamodb_table.authors-table.name}"
  hash_key   = "${aws_dynamodb_table.authors-table.hash_key}"
  item = <<ITEM
{
  "Author": {"S": "Adelstein, Jake"},
  "twitterHandle": {"S": "@jakeadelstein"}
}
ITEM
}