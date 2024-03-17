resource "aws_dynamodb_table" "table" {
  name           = var.tablename
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.hkey

  attribute {
    name = var.hkey
    type = var.htype
  }
}