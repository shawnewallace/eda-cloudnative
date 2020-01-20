resource "azurerm_app_configuration" "appconf" {
  name = "eda-app-config-${var.environment}"
  location  = azurerm_resource_group.eda.location
  resource_group_name = azurerm_resource_group.eda.name
  sku = "free"
}
