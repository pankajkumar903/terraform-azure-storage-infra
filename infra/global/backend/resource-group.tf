resource "azurerm_resource_group" "tfstate_rg" {
name = "tfstate-global-rg"
location = "eastus"

tags = {
environment = "global"
purpose = "terraform-backend"
owner = "Pankaj"
}
}