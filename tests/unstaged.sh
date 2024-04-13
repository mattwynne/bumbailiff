#!/bin/bash
source "functions.sh"
create_git_repo
touch file.js
git add .
git commit --quiet --allow-empty -m "Add file.js"
echo """# TODO: rewrite in ruby
console.log('yo')
""" >file.js
bumbailiff
echo $?
