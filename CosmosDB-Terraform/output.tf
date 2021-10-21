output "cosmos_account_name" {
  value = azurerm_cosmosdb_account.cosmos_acc.name
}

output "azurerm_cosmosdb_sql_database" {
  value = azurerm_cosmosdb_sql_database.db.name
}

output "azurerm_cosmosdb_sql_container" {
  value = azurerm_cosmosdb_sql_container.container.name
}