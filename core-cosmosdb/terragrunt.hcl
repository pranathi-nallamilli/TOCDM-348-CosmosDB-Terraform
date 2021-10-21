include {
  path = find_in_parent_folders("terragrunt_root.hcl")
}

terraform {
  source = "git::git@github.com:Sreelal-VU/TOCDM-348-CosmosDB-Terraform.git//TOCDM-348-CosmosDB-Terraform/CosmosDB-Terraform?ref=main"
            
}

dependency "core_resource_group" {
  config_path = "../core-resource-group"

  mock_outputs_allowed_terraform_commands = ["validate", "plan"]
  mock_outputs = {
    resource_groups = {
      net = {
        name = "NET-RSG"
      }
      shared = {
        name = "SHARED-RSG"
      }
    }
  }
}
inputs = {
  vnet_rsg_name = dependency.core_resource_group.outputs.resource_groups.net.name
}