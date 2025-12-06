module "storage" {
source = "C:/Users/shail/Desktop/infra/modules/storage"

resource_group_name = var.resource_group_name
location = var.location

storage_account_name = var.storage_account_name
storage_container_name = var.storage_container_name
file_share_name = var.file_share_name
table_name = var.table_name
queue_name = var.queue_name

tags = var.tags
}