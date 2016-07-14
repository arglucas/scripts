KEY=$(aws configure get aws_access_key_id)
SECRET=$(aws configure get aws_secret_access_key)
REGION=eu-west-1
VPC=$(aws ec2 describe-vpcs --filters 'Name=tag:Name,Values=Default' | jq -r '.Vpcs[].VpcId')
docker-machine create -d amazonec2 --amazonec2-access-key $KEY --amazonec2-secret-key $SECRET --amazonec2-region $REGION --amazonec2-vpc-id $VPC aws-docker
