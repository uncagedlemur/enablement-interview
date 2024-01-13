#!/bin/bash

# Set environment variable with GitHub username in /root/.bash_profile
echo 'export GITHUB_USERNAME=<YourGitHubUsername>' >> /root/.bash_profile

# Write code to config.hcl file
cat <<EOL > config.hcl
cluster_addr  = "https://<HOSTNAME>:8201"
api_addr      = "https://<HOSTNAME>:8200"
disable_mlock = true
EOL

# Replace <HOSTNAME> value in config.hcl
sed -i 's|<HOSTNAME>|vault-server.hashicorp.com|g' config.hcl

echo "Setup complete."
