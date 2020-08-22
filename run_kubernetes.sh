#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=$dockerusername/udacity-api:1.0

# Step 2
# Run the Docker Hub container with kubernetes
kubectl run udacity-api\
    --generator=run-pod/v1\
    --image=$dockerpath\
    --port=80 --labels app=udacity-api

# Step 3:
# List kubernetes pods
kubectl get pods

# Step 4:
# Forward the container port to a host
kubectl port-forward udacity-api 8000:80

