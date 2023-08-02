#!/bin/bash

echo "Creating S3 bucket..."

source ./util/set-variables.sh

# Create S3 bucket using specified profile
aws s3api create-bucket --bucket $BUCKET_NAME --region $REGION --create-bucket-configuration LocationConstraint=$REGION --profile $PROFILE_NAME > /dev/null 2>&1
