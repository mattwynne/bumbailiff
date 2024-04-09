#!/bin/bash
root="$(realpath "$(dirname "$0")/..")"
echo "$root"
source "$root/test_helpers.sh"
export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
export GIT_AUTHOR_DATE="$(last_week)"
export GIT_COMMITTER_DATE="$(last_week)"
mkdir -p git && cd "git"
create_git_repo
git commit --quiet -m "Initial commit" --allow-empty
echo """// TODO: remove semicolon
alert('yo');
// TODO: extract method
""" >file.js
git add .
git commit --quiet --allow-empty -m "Add file.js"
export GIT_AUTHOR_DATE="$(yesterday)"
export GIT_COMMITTER_DATE="$(yesterday)"
echo """# TODO: rewrite in javascript
puts 'yo'
""" >file.rb
git add .
git commit --quiet --allow-empty -m "Add file.rb"
bumbailiff
echo $?
