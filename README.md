# S3-PUBLIC-BUCKET-MANAGER

A simple set of commands that create an S3 bucket, an IAM user with read/write permissions to that bucket and print that users access keys for quick creation of an S3 bucket to programatically upload assets to a bucket where the contents will be publicly available.

## Pre-Requisites

You must have v2 of the AWS CLI installed on your machine and an IAM profile configured with full s3 bucket permissions.

## Useage

Modify the contents of `/util/set-variables.sh' to match your environment.

To create a bucket, an IAM user with access to only that bucket and make the bucket public run the following shell command within the root directory of this repo:

`./create.sh`

To empty the bucket, remove it and its associated IAM user, run the following shell command within the root directory of this repo:

`./delete.sh`

You can run each of the utility functions independently also to perform their singular operations, just make sure when doing so to run in the root directory of the project. 

For example:

`./util/get-iam-keys.sh`
