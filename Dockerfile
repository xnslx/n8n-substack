FROM n8nio/n8n:latest

# Use root during build so we can install globally
USER root

# Install the Substack community node globally
RUN npm install -g n8n-nodes-substack

# Tell n8n where custom extensions live
ENV N8N_CUSTOM_EXTENSIONS=/home/node/.n8n/custom

# Create the custom folder and link the installed module into it
RUN mkdir -p /home/node/.n8n/custom \
    && ln -s /usr/local/lib/node_modules/n8n-nodes-substack \
           /home/node/.n8n/custom/n8n-nodes-substack

# Back to the default "node" user that n8n expects
USER node
