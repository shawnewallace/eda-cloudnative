resource "azurerm_servicebus_subscription" "firstEvent-logger" {
  name                = "logger1"
  resource_group_name = azurerm_resource_group.eda.name
  namespace_name      = azurerm_servicebus_namespace.eda.name
  topic_name          = azurerm_servicebus_topic.firstEvent.name
  forward_to = azurerm_servicebus_topic.loggerEvent.name
  max_delivery_count  = 1
} 

resource "azurerm_servicebus_subscription" "secondEvent-logger" {
  name                = "logger2"
  resource_group_name = azurerm_resource_group.eda.name
  namespace_name      = azurerm_servicebus_namespace.eda.name
  topic_name          = azurerm_servicebus_topic.secondEvent.name
  forward_to = azurerm_servicebus_topic.loggerEvent.name
  max_delivery_count  = 1
} 