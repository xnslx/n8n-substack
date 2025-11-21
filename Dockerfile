FROM n8nio/n8n:latest

# Install Substack community node
RUN npm install n8n-nodes-substack

# Ensure custom nodes are picked up
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom
RUN mkdir -p /home/node/.n8n/custom
RUN cp -r /usr/local/lib/node_modules/n8n-nodes-substack /home/node/.n8n/custom/
