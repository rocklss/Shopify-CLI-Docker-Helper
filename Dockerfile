# Base image: Use Node.js version 20
FROM node:20-bullseye

# Set working directory inside the container
WORKDIR /workspace

# Install git
RUN apt-get update && apt-get install -y git

# Install xdg-ultis to verify login Shopify CLI
RUN apt-get update && apt-get install -y xdg-utils

# Install Shopify CLI globally
RUN npm install -g @shopify/cli@latest

# Verify installations
RUN node -v && npm -v && shopify version

# Default command when the container starts
CMD ["bash"]
