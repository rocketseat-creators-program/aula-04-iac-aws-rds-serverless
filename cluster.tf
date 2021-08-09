resource "aws_rds_cluster" "default" {
  depends_on              = [aws_security_group.default]
  cluster_identifier      = local.identifier
  engine                  = var.engine
  engine_version          = var.engineVersion
  database_name           = var.databaseName
  master_username         = var.databaseUsername
  master_password         = var.databasePassword
  vpc_security_group_ids  = [aws_security_group.default.id]
  db_subnet_group_name    = aws_db_subnet_group.default.id
  tags                    = local.tags
  skip_final_snapshot     = var.skipFinalSnapshot
  backup_retention_period = var.backupRetentionPeriod
  storage_encrypted       = var.storageEncrypted
  copy_tags_to_snapshot   = var.copyTagsTOSnapshot
  engine_mode             = var.engine_mode
  deletion_protection     = var.deletionProtection
}