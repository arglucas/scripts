# To use do eval $(aws_creds_to_env.sh)
AWS_ACCESS_KEY_ID=$(aws configure get aws_access_key_id)
AWS_SECRET_ACCESS_KEY=$(aws configure get aws_secret_access_key)
echo \#Run eval \$\(aws_creds_to_env.sh\)