#!/bin/bash
# TODO: put these on path
source "../../../test_helpers.sh"
mkdir -p "git" && cd "git" || exit
create_git_repo
git commit --quiet -m "Initial commit" --allow-empty
touch file.js
git add .
git commit --quiet --allow-empty -m "Add file.js"
echo """# TODO: rewrite in ruby
console.log('yo')
""" >file.js
bumbailiff
echo $?
