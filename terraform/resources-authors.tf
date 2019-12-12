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
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Desienne, Stéphane"},
  "twitterHandle": {"S": "@DesienneAuteur"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Roch-Michael" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Roch, Michael"},
  "twitterHandle": {"S": "@MchlRoch"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Louapre-David" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Louapre, David"},
  "twitterHandle": {"S": "@dlouapre"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Dubuisson-Marc" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Dubuisson, Marc"},
  "twitterHandle": {"S": "@Unpied"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Afflatet-Bernard" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Afflatet, Bernard"},
  "twitterHandle": {"S": "@BernardAfflatet"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Adelstein-Jake" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Adelstein, Jake"},
  "twitterHandle": {"S": "@jakeadelstein"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Saraja-Olivier" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Saraja, Olivier"},
  "twitterHandle": {"S": "@olissar_auteur"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Moulay-Sophie" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Moulay, Sophie"},
  "twitterHandle": {"S": "@SophieMoulay"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Balek-Jeff" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Balek, Jeff"},
  "twitterHandle": {"S": "@balek"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Benamran-Bruce" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Benamran, Bruce"},
  "twitterHandle": {"S": "@epenser"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Calatraba-Eric" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Calatraba, Éric"},
  "twitterHandle": {"S": "@CalatrabaEric"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Crouzet-Thierry" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Crouzet, Thierry"},
  "twitterHandle": {"S": "@crouzet"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Ferrero-Jean-Baptiste" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Ferrero, Jean-Baptiste"},
  "twitterHandle": {"S": "@jbf_jb"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Fuentealba-Jacques" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Fuentealba, Jacques"},
  "twitterHandle": {"S": "@OuroborosEBE"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Galfard-Christophe" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Galfard, Christophe"},
  "twitterHandle": {"S": "@galfard"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Glukhovsky-Dmitry" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Glukhovsky, Dmitry"},
  "twitterHandle": {"S": "@glukhovsky"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Goldacre-Ben" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Goldacre, Ben"},
  "twitterHandle": {"S": "@bengoldacre"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Guiton-Amaelle" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Guiton, Amaelle"},
  "twitterHandle": {"S": "@amaelle_g"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Geha-Thomas" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Géha, Thomas"},
  "twitterHandle": {"S": "@ThomasGeha"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Jarry-Alexandre" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Jarry, Alexandre"},
  "twitterHandle": {"S": "@AlexandreJarry"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Kauffman-Christophe" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Kauffman, Christophe"},
  "twitterHandle": {"S": "@CkChristophe"}
}
ITEM
}

resource "aws_dynamodb_table_item" "King-Stephen" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "King, Stephen"},
  "twitterHandle": {"S": "@StephenKing"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Kloetzer-Laurent-L" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Kloetzer, Laurent L."},
  "twitterHandle": {"S": "@lependuXII"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Launay-Mickael" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Launay, Mickaël"},
  "twitterHandle": {"S": "@mickaellaunay"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Lucazeau-Romain" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Lucazeau, Romain"},
  "twitterHandle": {"S": "@RomainLucazeau"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Michaud-David" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Michaud, David"},
  "twitterHandle": {"S": "@lejapon"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Paquet-Olivier" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Paquet, Olivier"},
  "twitterHandle": {"S": "@Erion_"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Poupee-Karyn" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Poupée, Karyn"},
  "twitterHandle": {"S": "@karyn_nishi"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Sun-Sozuka" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Sun-Sozuka"},
  "twitterHandle": {"S": "@SozukaSun"}
}
ITEM
}

resource "aws_dynamodb_table_item" "Teyssandier-Nicolas" {
  table_name = aws_dynamodb_table.authors-table.name
  hash_key = aws_dynamodb_table.authors-table.hash_key
  item = <<ITEM
{
  "Author": {"S": "Teyssandier, Nicolas"},
  "twitterHandle": {"S": "@teyssand31"}
}
ITEM
}

