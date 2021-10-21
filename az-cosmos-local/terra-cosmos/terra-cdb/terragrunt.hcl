
include {
    path = find_in_parent_folders("terragrunt_root.hcl")
}

terraform {
    source = "/Users/pnallamilli/projects/TOCDM-348-CosmosDB-Terraform-demo/az-cosmos-local/hux/cosmos"
}

#dependency "terra-rg" {
#    config_path = "/Users/pnallamilli/projects/TOCDM-348-CosmosDB-Terraform-demo/az-cosmos-local/terra-cosmos/terra-rg"
#}



