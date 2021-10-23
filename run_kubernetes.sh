#!/usr/bin/env bash

# This tags and uploads an image to Docker Hub

# Step 1:
# This is your Docker ID/path
# dockerpath=<>
dockerpath=youssefsaeed11/machine_learning_microservice_api
# Step 2
# Run the Docker Hub container with kubernetes
kubectl run devops-microservices-project --image=$dockerpath --port=8000
# Sleep 20 seconds to allow the pod to be available
echo "Waiting for pod to be available ..."
sleep 20s
# Step 3:
# List kubernetes pods
kubectl get pods
# Step 4:
# Forward the container port to a host

kubectl port-forward devops-microservices-project 8000:80
