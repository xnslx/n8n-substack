FROM n8nio/n8n:latest

# Run as the node user (default in this image)
USER node

# Tell n8n where to look for custom nodes
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom

# Create custom extensions folder and install the Substack node there
RUN mkdir -p /home/node/.n8n/custom \
    && cd /home/node/.n8n/custom \
    && npm install n8n-nodes-substack
