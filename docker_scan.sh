#!/bin/bash
# This script pulls the Ubuntu latest image with debugging.
 
IMAGE1="ubuntu:latest"
IMAGE2="ayandocker277/docker-scan:latest"
echo "Attempting to pull the image: ${IMAGE}"
 
if docker pull "${IMAGE1}"; then
    echo "Image pulled successfully."
else
    echo "Error: Failed to pull the image: ${IMAGE}" >&2
    exit 1
fi

if docker pull "${IMAGE2}"; then
    echo "Image pulled successfully."
else
    echo "Error: Failed to pull the image: ${IMAGE}" >&2
    exit 1
fi