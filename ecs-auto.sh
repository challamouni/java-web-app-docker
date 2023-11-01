#!/bin/bash
SERVICE="demo-java"
CLUSTER_NAME="demo-java"
AWS_REGION="us-east-1"
# export AWS_PROFILE=default

# Register a new Task definition 
aws ecs register-task-definition --family demo-new --cli-input-json file://task-new.json --region $AWS_REGION

# Update Service in the Cluster
# aws ecs update-service --cluster $CLUSTER_NAME --service $SERVICE --task-definition demo-new --desired-count 1 --region $AWS_REGION
