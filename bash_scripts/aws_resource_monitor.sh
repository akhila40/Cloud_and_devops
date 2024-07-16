#!/bin/bash

####################
#Author: Nikhil
#Date : 14/07/2024
####################
#This script is to monitor AWS resources like S3, EC2, Lambda and IAM
#Used AWS CLI 

set -x
set -e
set -o pipefail

echo "Print S3 Buckets"
aws s3 ls > resourceTracker.txt

echo "Print EC2 Instances"
aws ec2 describe-instances | jq '.Reservations[].Instances[].InstanceId' >> resourceTracker.txt

echo "Print Lambda Functions"
aws lambda list-functions >> resourceTracker.txt

echo "Print IAM Users"
aws iam list-users >> resourceTracker.txt

