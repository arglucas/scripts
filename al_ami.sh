#!/bin/bash
# Get the AMI id for Amazon Linux for all regions.
for r in $(aws ec2 describe-regions | jq -r '.Regions[].RegionName'); do echo -n "$r "; aws --region $r ec2 describe-images --filter 'Name=description,Values=Amazon Linux AMI 2016.03.3 x86_64 HVM GP2' | jq -r '.Images[].ImageId'; done