resource "azurerm_storage_account" "storage" {
  name                     = "${random_id.server.keepers.hex_dev}stg${var.environment}"
  resource_group_name      = azurerm_resource_group.eda.name
  location                 = azurerm_resource_group.eda.location
  account_tier             = "Standard"
  account_kind            = "StorageV2"
  account_replication_type = "LRS"
}