aws ec2 describe-instances --filter Name=tag:Name,Values=$1 --query 'Reservations[].Instances[].[PublicIpAddress]' --output text
