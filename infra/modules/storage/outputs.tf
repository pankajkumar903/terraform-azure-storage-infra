output "storage_account_name" {
value = azurerm_storage_account.sa.name
}

output "resource_group_name" {
value = azurerm_resource_group.rg.name
}

output "container_name" {
value = azurerm_storage_container.container.name
}

output "file_share_name" {
value = azurerm_storage_share.share.name
}

output "table_name" {
value = azurerm_storage_table.table.name
}

output "queue_name" {
value = azurerm_storage_queue.queue.name
}