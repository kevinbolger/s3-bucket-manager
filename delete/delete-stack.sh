#!/bin/bash

echo "Deleting stack..."

source ./util/set-variables.sh

aws cloudformation delete-stack --stack-name $STACK_NAME --region $REGION --profile $PROFILE_NAME
aws cloudformation wait stack-delete-complete --stack-name $STACK_NAME
