variable "resource_group_name" { type = string }
variable "location" { type = string }

variable "storage_account_name" { type = string }
variable "storage_container_name" { type = string }

variable "file_share_name" {
type = string
default = "defaultshare"
}

variable "file_share_quota" {
type = number
default = 50
}

variable "table_name" {
type = string
default = "defaulttable"
}

variable "queue_name" {
type = string
default = "defaultqueue"
}

variable "container_access_type" {
type = string
default = "private"
}

variable "tags" {
type = map(string)
}