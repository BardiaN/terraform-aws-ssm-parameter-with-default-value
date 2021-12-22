#!/bin/sh

eval "$(jq -r '@sh "SSM_KEY=\(.ssm_key) DEFAULT=\(.default_value)"')"

Value=$(aws ssm get-parameter --name="$SSM_KEY" | jq -r .Parameter.Value)

if [ -z "$Value" ]; then
  Value=$DEFAULT
fi

jq -n --arg Value "$Value" '{"Value" : $Value}'