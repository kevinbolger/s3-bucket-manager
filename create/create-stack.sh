#!/bin/bash

echo "Creating CloudFormation stack..."

source ./util/set-variables.sh

# Create CloudFormation stack using template file
aws cloudformation create-stack --stack-name $STACK_NAME --template-body file://$TEMPLATE_FILE --parameters ParameterKey=BucketName,ParameterValue=$BUCKET_NAME --capabilities CAPABILITY_IAM  > /dev/null 2>&1

# Wait for the stack to be created
aws cloudformation wait stack-create-complete --stack-name $STACK_NAME