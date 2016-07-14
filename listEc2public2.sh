# Get instances, filter out the InstanceID, Public IP, Key and Name Tag
# Use sed to get 4 lines at a time (3 N commands get next 3 lines, swaps end of line to a space and dbl-quotes are removed
# Finally format it using the column command with -t to auto determine the columns from input.
# The $ is last line, ! is not so $!N means don't read a line if on last line
aws ec2 describe-instances | jq '.Reservations[].Instances[] | .InstanceId, .PublicIpAddress, .KeyName, (.Tags[] | select(.Key | contains("Name"))).Value' | sed -e '$!N;$!N;$!N;s/\n/ /g;s/\"//g' | column -t
