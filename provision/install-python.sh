#!/usr/bin/env bash

# Run the installer
curl -L https://raw.githubusercontent.com/pyenv/pyenv-installer/master/bin/pyenv-installer | bash

# Update the bashrc file
cat >> ~/.bashrc <<'EOL'
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
EOL

# Export the env vars
export PATH="$HOME/.pyenv/bin:$PATH"
eval "$(pyenv init -)"

# Use pyenv to install Python
pyenv install -v 3.10.4
pyenv global 3.10.4