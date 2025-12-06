resource "azurerm_resource_group" "rg" {
name = var.resource_group_name
location = var.location
tags = var.tags
}

resource "azurerm_storage_account" "sa" {
name = var.storage_account_name
resource_group_name = azurerm_resource_group.rg.name
location = azurerm_resource_group.rg.location
account_tier = "Standard"
account_replication_type = "LRS"
account_kind = "StorageV2"

tags = var.tags
}

resource "azurerm_storage_container" "container" {
name = var.storage_container_name
storage_account_name = azurerm_storage_account.sa.name
container_access_type = var.container_access_type
}

resource "azurerm_storage_share" "share" {
name = var.file_share_name
storage_account_name = azurerm_storage_account.sa.name
quota = var.file_share_quota
}

resource "azurerm_storage_table" "table" {
name = var.table_name
storage_account_name = azurerm_storage_account.sa.name
}

resource "azurerm_storage_queue" "queue" {
name = var.queue_name
storage_account_name = azurerm_storage_account.sa.name
}