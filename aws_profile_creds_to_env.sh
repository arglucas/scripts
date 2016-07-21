# To use do eval $(aws_profile_creds_to_env.sh)
AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id --profile $1)
AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key --profile $1)
echo \#Run eval \$\(aws_profile_creds_to_env.sh \<profile_name\>\)
