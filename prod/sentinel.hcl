#
# Modules
#

module "tfplan-functions" {
  source = "../policies/functions/tfplan-functions/tfplan-functions.sentinel"
}

module "tfstate-functions" {
  source = "../policies/functions/tfstate-functions/tfstate-functions.sentinel"
}

module "tfconfig-functions" {
  source = "../policies/functions/tfconfig-functions/tfconfig-functions.sentinel"
}

module "tfrun-functions" {
  source = "../policies/functions/tfrun-functions/tfrun-functions.sentinel"
}

#
# AWS Policies
#

policy "aws/restrict-ami-owners" {
  source            = "../policies/aws/restrict-ami-owners.sentinel"
  enforcement_level = "hard-mandatory"
}

policy "aws/enforce-mandatory-ami-tags" {
  source            = "../policies/aws/enforce-mandatory-ami-tags.sentinel"
  enforcement_level = "hard-mandatory"
}

#
# Azure Policies
#

#
# Common Policies
#

policy "common/require-all-modules-from-pmr" {
  source            = "../policies/common/require-all-modules-from-pmr.sentinel"
  enforcement_level = "hard-mandatory"
}
