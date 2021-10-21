generate "provider" {
  path      = "provider.tf"
  if_exists = "overwrite_terragrunt"
  contents  = <<EOF
    provider "azurerm" {
      tenant_id       = "36da45f1-dd2c-4d1f-af13-5abe46b99921"
      subscription_id = "84851fb3-6fbc-42b2-9783-5c66d2ffd98b"

      features {}
    }
EOF
}
