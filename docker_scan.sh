#!/bin/bash
# This script pulls the Ubuntu latest image with debugging.
 
IMAGE="ubuntu:latest"
echo "Attempting to pull the image: ${IMAGE}"
 
if docker pull "${IMAGE}"; then
    echo "Image pulled successfully."
else
    echo "Error: Failed to pull the image: ${IMAGE}" >&2
    exit 1
fi