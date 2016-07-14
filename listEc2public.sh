aws ec2 describe-instances --query 'Reservations[].Instances[].[InstanceId,PublicIpAddress,KeyName,Tags[?Key==`Name`].Value[]]' --output text | sed '$!N;s/\n/ /'
