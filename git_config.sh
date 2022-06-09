#!/usr/bin/env bash

git config --global url."https://x-access-token:${GITHUB_TOKEN}@github.com/".insteadOf https://github.com
git config --global user.email "devops@global-fashion-group.com"
git config --global user.name "${GITHUB_USERNAME}"

# configuration for `gh`
mkdir -pv ~/.config/gh/

cat > ~/.config/gh/config.yml \
  <<EOF
hosts:
  github.com:
    oauth_token: ${GITHUB_TOKEN}
    user: ${GITHUB_USERNAME}
EOF

# Remove temp_changed_files if exist
git remote remove temp_changed_files || true
