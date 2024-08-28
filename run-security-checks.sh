#!/bin/bash

# Check if Dockerfile exists
if [ ! -f Dockerfile ]; then
  echo "Dockerfile not found in the current directory."
  exit 1
fi

# Run Hadolint to lint the Dockerfile
echo "Running Hadolint..."
hadolint Dockerfile
if [ $? -ne 0 ]; then
  echo "Hadolint found issues in your Dockerfile."
else
  echo "No issues found by Hadolint."
fi

echo "-----------------------------------"

# Run Docker Bench Security
echo "Running Docker Bench Security..."
docker run --privileged --pid=host -v /var/run/docker.sock:/var/run/docker.sock -v /etc:/etc:ro docker/docker-bench-security
if [ $? -ne 0 ]; then
  echo "Docker Bench Security encountered issues."
else
  echo "Docker Bench Security completed successfully."
fi
