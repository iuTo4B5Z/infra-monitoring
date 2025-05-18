#!/bin/bash
set -e

# Define variables
DEST_DIR="../docker/infra-monitoring"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy non-secret files
cp "compose.yaml" "$DEST_DIR/"
cp "prometheus.yaml" "$DEST_DIR/"
cp "telegraf.conf" "$DEST_DIR/"

# Prompt for secrets
echo "Setup is complete. Please copy the .env file to $DEST_DIR before starting the containers."