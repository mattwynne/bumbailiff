#!/bin/bash
source "../../../test_helpers.sh"
export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
export GIT_AUTHOR_DATE="$(yesterday)"
export GIT_COMMITTER_DATE="$(yesterday)"
mkdir -p tmp/git/one-zero-day-todo
cd tmp/git/one-zero-day-todo
git init --quiet .
git config commit.gpgSign false
git commit --quiet -m 'Initial commit' --allow-empty
echo '// TODO: 1-day old TODO' >file.js
git add .
git commit --quiet -m 'Commit'
bumbailiff
echo $?
