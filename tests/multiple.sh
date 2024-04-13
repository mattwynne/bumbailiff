#!/bin/bash
source "functions.sh"
set_git_date "$(last_week)"
create_git_repo
echo """// TODO: remove semicolon
alert('yo');
// TODO: extract method
""" >file.js
git add .
git commit --quiet --allow-empty -m "Add file.js"
set_git_date "$(yesterday)"
echo """# TODO: rewrite in javascript
puts 'yo'
""" >file.rb
git add .
git commit --quiet --allow-empty -m "Add file.rb"
bumbailiff
echo $?
