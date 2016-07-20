#!/bin/bash
# Create Amazon Linux Instance with public SSH access in eu-west-1
# Requires aws cli and jq

# AL2015.09 eu-west-1
IMAGE=ami-69b9941e
# SSH SG (replace with target)
SG=sg-522a2330

ID=$(aws ec2 run-instances --image-id $IMAGE --instance-type t2.medium --key-name DevKey --associate-public-ip-address --security-group-ids $SG | jq -r '.Instances[].InstanceId')

echo Instance Id: $ID
# Sleep to allow the instance enough time to setup public IP
sleep 15

IP=$(aws ec2 describe-instances --instance-id $ID | jq -r '.Reservations[].Instances[].PublicIpAddress')

echo Public IP: $IP
