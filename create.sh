#!/bin/bash

echo "Starting chain..."

./create/create-bucket.sh
./util/make-bucket-public.sh
./create/create-stack.sh
./util/get-iam-keys.sh
