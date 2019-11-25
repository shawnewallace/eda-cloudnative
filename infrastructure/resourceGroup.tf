resource "azurerm_resource_group" "eda" {
  name     = "edaRg_${var.environment}"
  location = var.region
}