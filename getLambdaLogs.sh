#!/bin/bash
# The ${a//\"} removes surrounding double quotes from a variable
groups=$(aws logs describe-log-groups | jq ".logGroups[].logGroupName")
for group in $groups; do
  echo Group: $group
  streams=$(aws logs describe-log-streams --log-group-name ${group//\"} | jq ".logStreams[].logStreamName")
  for stream in $streams; do
    echo Stream: $stream
    aws logs get-log-events --log-group-name ${group//\"} --log-stream-name ${stream//\"} | jq ".events[].message"
  done
done
