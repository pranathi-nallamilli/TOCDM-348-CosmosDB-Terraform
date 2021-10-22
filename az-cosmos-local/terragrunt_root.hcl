generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    provider "azurerm" {
      tenant_id       = ""
      subscription_id = ":"

      features {}
    }
EOF
}
