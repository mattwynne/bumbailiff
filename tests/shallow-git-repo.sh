#!/bin/bash
# shellcheck source=./test_helpers.sh
source "../../../test_helpers.sh"
export GIT_AUTHOR_DATE="$(last_week)"
export GIT_COMMITTER_DATE="$(last_week)"
mkdir -p "origin" && cd "origin" || exit
create_git_repo
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
