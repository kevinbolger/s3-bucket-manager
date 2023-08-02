#!/bin/bash

echo "Emptying bucket..."

source ./util/set-variables.sh

aws s3 rm s3://$BUCKET_NAME --recursive --region $REGION --profile $PROFILE_NAME
