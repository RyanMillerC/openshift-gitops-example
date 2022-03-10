#!/bin/bash

# Decrypt and source secrets
sops -d ./quay-auth.enc.json > ./quay-auth.json
sops -d ./enc.env > ./.env
source .env

kam bootstrap \
  --service-repo-url 'https://gitlab.taco.moe/gitops/taxi.git' \
  --gitops-repo-url 'https://gitlab.taco.moe/gitops/gitops.git' \
  --image-repo 'quay.io/rymiller/taxi' \
  --dockercfgjson ./quay-auth.json \
  --git-host-access-token "${GIT_ACCESS_TOKEN}" \
  --output ./resources \
  --push-to-git=false \
  --private-repo-driver 'gitlab'
