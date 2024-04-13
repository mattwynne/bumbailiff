#!/bin/bash
source "functions.sh"
create_git_repo
echo "// TODO: 0-day old TODO" >file.js
git add .
git commit --quiet --allow-empty -m "Commit"
bumbailiff
echo $?
