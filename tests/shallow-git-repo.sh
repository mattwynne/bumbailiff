#!/bin/bash
source "functions.sh"
set_git_date "$(last_week)"
mkdir -p "origin" && cd "origin" || exit
create_git_repo
echo "TODO: fix me" >a-file
git add .
git commit --quiet -m "Add a-file"
touch another-file
git add .
git commit --quiet -m "Add another-file"
cd ..
git clone --quiet "file://$(realpath ./origin)" --depth 1 clone
cd clone || exit
bumbailiff
echo $?
