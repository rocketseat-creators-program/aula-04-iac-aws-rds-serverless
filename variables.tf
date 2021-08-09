variable "env" {
  default = "dev"
}

variable "region" {
  default = "us-east-1"
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

variable "databaseName" {
  default = "travels"
}

variable "databaseUsername" {
  default = "travels"
}

variable "databasePassword" {
  default = "travels#123"
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

variable "envVersion" {
  default = "v2"
}

variable "engine_mode" {
  default = "serverless"
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

variable "maxCapacity" {
  default = "8"
}

variable "minCapacity" {
  default = "2"
}


variable "secondsUntilAutoPause" {
  default = "300"
}

variable "timeoutAction" {
  default = "ForceApplyCapacityChange"
}