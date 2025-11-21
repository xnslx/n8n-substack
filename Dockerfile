FROM n8nio/n8n:latest

# n8n runs as user "node" in this image
USER node

# Standard place for custom nodes in n8n docker
ENV N8N_CUSTOM_EXTENSIONS=/data/custom

# Create the custom folder and install the Substack node there
RUN mkdir -p /data/custom \
    && cd /data/custom \
    && npm install n8n-nodes-substack
