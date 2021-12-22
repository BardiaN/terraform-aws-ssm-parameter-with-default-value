# Terraform AWS SSM (System Manager Store Parameter) With Default Value
This is a simple terraform module that tries to read an AWS SSM parameter. If the parameter doesn't exist, it will return a default value without throwing an error.

## Example Usage

It will try to load the SSM key via AWS CLI and if the parameter doesn't exist or is null or empty, you will get the default value without seeing any error messages.

```
module "ssm_param1" {
  source = "BardiaN/terraform-aws-ssm-parameter-with-default-value"
  version = "0.1.0"

  ssm_key            = "<ssm_key>"
  ssm_default_value = "<your_default_value>"
}
```


## Argument Reference

The following arguments are supported:

- ssm_key - (Required) The key of the SSM parameter.
- ssm_default_value - (Required) The default value to be used if the key doesn't exist

## Attributes Reference

The following argument is supported:

- value: either the value of the SSM parameter or the default value provided.