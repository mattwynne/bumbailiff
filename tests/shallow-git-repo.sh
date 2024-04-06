#!/bin/bash
# shellcheck source=./test_helpers.sh
source "../../../test_helpers.sh"
export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
export GIT_AUTHOR_DATE="$(last_week)"
export GIT_COMMITTER_DATE="$(last_week)"
mkdir -p "origin" && cd "origin" || exit
git init --quiet .
git config commit.gpgSign false
git commit --quiet -m "Initial commit" --allow-empty
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
