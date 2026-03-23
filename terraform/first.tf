module "aws_test_0815" {
  source = "github.com/aws-ia/terraform-aws-control_tower_account_factory/aft-customizations-repos/aft-account-request/terraform/modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "mo+aws-test-0815@obcon.de"
    AccountName  = "aws-test-0815"
    ManagedOrganizationalUnit = "Sandbox"
    SSOUserEmail     = "mo+aws-test-0815@obcon.de"
    SSOUserFirstName = "Marco"
    SSOUserLastName  = "Obermeyer"
  }

  account_tags = {
    "PCS:Owner"       = "mo+aws-test-0815@obcon.de"
  }

  change_management_parameters = {
    change_requested_by = "Marco Obermeyer"
    change_reason       = "testing the account vending process"
  }

  # custom_fields = {
  #   custom1 = "a"
  #   custom2 = "b"
  # }

  # account_customizations_name = "sandbox-customizations"
}
