variable "ssm_key" {
  description = "AWS SSM Key"
}

variable "ssm_default_value" {
  description = "The default value to be used when the parameter doesn't exist or the parameter value is null or empty"
}