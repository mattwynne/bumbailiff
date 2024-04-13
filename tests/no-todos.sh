mkdir -p "git" && cd "git"
create_git_repo
git commit --quiet -m "Initial commit" --allow-empty
bumbailiff
echo $?
