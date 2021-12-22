# Terraform AWS SSM (System Manager Store Parameter) With Default Value
This is a simple terraform module that tries to read an AWS SSM parameter. If the parameter doesn't exist, it will return a default value without throwing an error.

## Usage

module "ssm_param1" {
  source = "BardiaN/terraform-aws-ssm-parameter-with-default-value"
  version = "0.1.0"

  ssm_key            = "<ssm_key>"
  ssm_defauult_value = "<your_default_value>"
}

It will try to load the SSM key via AWS CLI and if the parameter doesn't exist or is null or empty, you wil get the default value.