#!/bin/bash

echo "Making bucket public..."

source ./util/set-variables.sh

sed "s/BUCKET_NAME/$BUCKET_NAME/g" policy-template.json > policy.json

# Add bucket policy to make bucket public

aws s3api put-public-access-block \
    --bucket $BUCKET_NAME \
    --profile $PROFILE_NAME \
    --public-access-block-configuration "BlockPublicAcls=false,IgnorePublicAcls=false,BlockPublicPolicy=false,RestrictPublicBuckets=false"

aws s3api put-bucket-policy --bucket $BUCKET_NAME --policy file://policy.json --profile $PROFILE_NAME
