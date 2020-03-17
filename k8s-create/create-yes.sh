#!/usr/bin/env bash

export KOPS_STATE_STORE=s3://eugene-aik-kops-2019

kops create cluster \
--master-volume-size 8 \
--master-size t2.micro \
--master-zones us-east-1a \
--node-count 4 \
--node-size t2.micro \
--node-volume-size 8 \
--zones us-east-1b,us-east-1c \
--cloud-labels "Owner=Aikashev Eugene" \
--name aikashev.tk \
--state=s3://eugene-aik-kops-2019 \
--yes
