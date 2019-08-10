#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
dockerpath=scaredcat/boston_housing

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run boston-housing --image=scaredcat/boston_housing --generator=run-pod/v1

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl expose pod boston-housing --port=80 --type=NodePort

