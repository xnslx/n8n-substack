FROM n8nio/n8n:latest

# Install Substack community node globally
RUN npm install --location=global n8n-nodes-substack

# Set custom extensions directory
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom

# Create directory for custom nodes and link installed module
RUN mkdir -p /home/node/.n8n/custom \
    && ln -s /usr/local/lib/node_modules/n8n-nodes-substack /home/node/.n8n/custom/n8n-nodes-substack
