locals {

  cosmos_db_account_name = "DB Account Name"

  default_failover_locations = {
    default = {
      location = var.location
    }
  }
} 