resource "aws_db_subnet_group" "default" {
  name       = local.subnet_group_name
  subnet_ids = data.aws_subnet.subnet_database.*.id
  tags       = local.tags
}