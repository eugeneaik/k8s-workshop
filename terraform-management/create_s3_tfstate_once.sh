#!/usr/bin/env bash

aws_profile="default"
aws_region=$(cat variables.tf | grep default | cut -d"=" -f2 | sed -e 's/^[[:space:]]*//' -e 's/"//g')
tfstate_s3_bucket=$(cat main.tf | grep bucket | cut -d"=" -f2 | sed -e 's/^[[:space:]]*//' -e 's/"//g')

aws s3 mb s3://${tfstate_s3_bucket} \
    --region "${aws_region}" \
    --profile "${aws_profile}"