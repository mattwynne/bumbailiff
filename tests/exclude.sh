#!/bin/bash
source "functions.sh"
set_git_date "$(yesterday)"
create_git_repo
echo """
// TODO: fix elixir
""" >file.ex
git add .
git commit --quiet --allow-empty -m "Add file.ex"
echo """
// TODO: fix javascript
""" >file.js
git add .
git commit --quiet --allow-empty -m "Add file.js"
echo """
# TODO: fix ruby
""" >file.rb
git add .
git commit --quiet --allow-empty -m "Add file.rb"
BUMBAILIFF_EXTENSIONS="*.ex *.rb" bumbailiff
echo $?
