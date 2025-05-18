#!/bin/bash
set -e

# Define source and destination
SRC_DIR="$(pwd)"
DEST_DIR="~/docker/infra-monitoring"

# Create destination directory if it doesn't exist
mkdir -p "$DEST_DIR"

# Copy non-secret files
cp -r "$SRC_DIR/infra-monitoring" "$DEST_DIR/"
cp "$SRC_DIR/docker-compose.yml" "$DEST_DIR/"
cp "$SRC_DIR/Dockerfile" "$DEST_DIR/"

# Prompt for secrets
echo "Please copy the .env file to $DEST_DIR before starting the containers."

# Set permissions (optional, adjust as needed)
chown -R root:docker "$DEST_DIR"
chmod -R 750 "$DEST_DIR"

echo "Setup is complete. To start the containers, run:"
echo "cd $DEST_DIR && docker compose up -d"