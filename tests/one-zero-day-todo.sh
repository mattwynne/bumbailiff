#!/bin/bash
source "../../../test_helpers.sh"
export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
mkdir -p git && cd git
create_git_repo
git commit --quiet -m "Initial commit" --allow-empty
echo "// TODO: 0-day old TODO" >file.js
git add .
git commit --quiet --allow-empty -m "Commit"
bumbailiff
echo $?
