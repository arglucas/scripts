aws iam get-user | jq '.User.Arn | split(":")[4]'
