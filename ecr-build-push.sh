#!/bin/bash
ACCOUNT_ID=aws sts get-caller-identity --query Account --output text
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 975050055152.dkr.ecr.us-east-1.amazonaws.com
docker build -t $1 /home/mohit/CloudProjectsFinal/aws-ecr-ecs/.
docker tag $1:latest 975050055152.dkr.ecr.us-east-1.amazonaws.com/$1:latest
docker push 975050055152.dkr.ecr.us-east-1.amazonaws.com/$1:latest