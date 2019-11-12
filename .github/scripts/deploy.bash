#!/bin/bash

set -eux

# setup ssh-agent and provide the GitHub deploy key
eval "$(ssh-agent -s)"
mkdir -p /root/.ssh
ssh-keyscan -t rsa github.com > /root/.ssh/known_hosts
echo "${DEPLOY_KEY}" > /root/.ssh/id_rsa
chmod 400 /root/.ssh/id_rsa

# commit the assets in docs/ if changed, and push to GitHub using SSH
git config user.name "${GIT_NAME}"
git config user.email "${GIT_EMAIL}"
git remote set-url origin git@github.com:${GITHUB_REPOSITORY}.git

git checkout ${TARGET_BRANCH}
git status
git add docs
git diff --staged --quiet || git commit -m "Update docs by GitHub Actions"
git push origin ${TARGET_BRANCH}
