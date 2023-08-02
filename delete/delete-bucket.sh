#!/bin/bash

echo "Deleting bucket..."

source ./util/set-variables.sh

aws s3api delete-bucket --bucket $BUCKET_NAME --region $REGION --profile $PROFILE_NAME
