variable "resource_group_name" {
  description = "Name of the application ressource group, herited from infra module"
  type        = string
  default     = "cosmosdb_rg1"
}

variable "location" {
  description = "Azure region to use"
  type        = string
  default     = "East US"
}

variable "subscription_id" {
  default = "<PUT_YOUR_SUBSCRIPTION_ID_HERE>"
}

variable "tenant_id" {
  default = "<PUT_YOUR_TENANT_ID_HERE>"
}

variable "failover_locations" {
  type        = map(map(string))
  description = "The name of the Azure region to host replicated data and their priority."
  default     = null
}

variable "offer_type" {
  type        = string
  description = "Specifies the Offer Type to use for this CosmosDB Account - currently this can only be set to Standard."
  default     = "Standard"
}

variable "kind" {
  type        = string
  description = "Specifies the Kind of CosmosDB to create - possible values are `GlobalDocumentDB` and `MongoDB`."
  default     = "GlobalDocumentDB"
}

variable "consistency_policy_level" {
  description = "Consistency policy level. Allowed values are `BoundedStaleness`, `Eventual`, `Session`, `Strong` or `ConsistentPrefix`"
  type        = string
  default     = "BoundedStaleness"
}

variable "consistency_policy_max_interval_in_seconds" {
  description = "When used with the Bounded Staleness consistency level, this value represents the time amount of staleness (in seconds) tolerated. Accepted range for this value is 5 - 86400 (1 day). Defaults to 5. Required when consistency_level is set to BoundedStaleness."
  type        = number
  default     = 10
}

variable "consistency_policy_max_staleness_prefix" {
  description = "When used with the Bounded Staleness consistency level, this value represents the number of stale requests tolerated. Accepted range for this value is 10 – 2147483647. Defaults to 100. Required when consistency_level is set to BoundedStaleness."
  type        = number
  default     = 200
}