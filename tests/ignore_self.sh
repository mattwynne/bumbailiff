#!/bin/bash
source "functions.sh"
set_git_date "$(last_week)"
create_git_repo
mkdir scripts
cp "$(which bumbailiff)" scripts
git add .
git commit --quiet -m "Add bumbailiff"
./scripts/bumbailiff
echo $?
