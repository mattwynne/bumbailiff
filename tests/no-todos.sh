export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
mkdir -p "git" && cd "git"
create_git_repo
git commit --quiet -m "Initial commit" --allow-empty
bumbailiff
echo $?
