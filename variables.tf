variable "region" {
  default = "us-east-1"
}

variable "env" {
  default = "dev"
}

variable "envVersion" {
  default = "v1"
}

variable "product" {
  default = "rocketseat"
}

variable "project" {
  default = "travels-backend"
}

variable "role" {
  default = "db"
}

variable "owner" {
  default = "squad-rocketseat"
}

variable "createdBy" {
  default = "devops-tools"
}

variable "engine" {
  default = "aurora-postgresql"
}

variable "engineVersion" {
  default = "10.7"
}

variable "engine_mode" {
  default = "serverless"
}

variable "databaseName" {
  default = "travels"
}

variable "databaseUsername" {
  default = "travels"
}

variable "backupRetentionPeriod" {
  default = "5"
}

variable "storageEncrypted" {
  default = "true"
}

variable "deletionProtection" {
  default = "true"
}

variable "skipFinalSnapshot" {
  default = "true"
}

variable "copyTagsTOSnapshot" {
  default = "true"
}

variable "autoPause" {
  default = "true"
}

variable "secondsUntilAutoPause" {
  default = "300"
}

variable "minCapacity" {
  default = "2"
}

variable "maxCapacity" {
  default = "8"
}

variable "timeoutAction" {
  default = "ForceApplyCapacityChange"
}