#!/bin/bash
if [ "$#" -ne 1 ]; then
  echo -e "Usage:\n\tdownload-lambda-function.sh <function-name>"
  exit 1
fi

loc=$(aws lambda get-function --function-name $1 | jq ".Code.Location" )
echo $loc
curl ${loc//\"} 
