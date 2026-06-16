resource "azurerm_resource_group" "stage" {
  name     = "stage_2607"
  location = "westindia"
}

resource "azurerm_storage_account" "ss2607" {
  for_each                 = toset(["ss2607", "ss26072"])
  name                     = each.value
  resource_group_name      = azurerm_resource_group.stage.name
  location                 = "East US"
  account_tier             = "Standard"
  account_replication_type = "LRS"
}

resource "azurerm_storage_container" "stage_container" {
  for_each              = toset(["sc92", "sc26"])
  name                  = each.value
  storage_account_name  = azurerm_storage_account.ss2607["ss26072"].name
  container_access_type = "private"
}