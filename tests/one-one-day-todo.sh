#!/bin/bash
source "functions.sh"
set_git_date "$(yesterday)"
create_git_repo
echo '// TODO: 1-day old TODO' >file.js
git add .
git commit --quiet -m 'Commit'
bumbailiff
echo $?
