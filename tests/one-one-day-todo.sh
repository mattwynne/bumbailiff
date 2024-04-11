#!/bin/bash
source "../../../test_helpers.sh"
export GIT_AUTHOR_DATE="$(yesterday)"
export GIT_COMMITTER_DATE="$(yesterday)"
mkdir -p git && cd git
create_git_repo
git commit --quiet -m 'Initial commit' --allow-empty
echo '// TODO: 1-day old TODO' >file.js
git add .
git commit --quiet -m 'Commit'
bumbailiff
echo $?
