#!/bin/bash
mkdir -p ~/.aws

cat <<EOF > ~/.aws/credentials
[default]
aws_access_key_id=$1
aws_secret_access_key=$2
EOF

chown ubuntu:ubuntu ~/.aws/credentials
chown -R ubuntu:ubuntu ~/.aws

mkdir -p /root/.aws

cat <<EOF > /root/.aws/credentials
[default]
aws_access_key_id=$1
aws_secret_access_key=$2
EOF

chown ubuntu:root /root/.aws/credentials
chown -R ubuntu:root /root/.aws
