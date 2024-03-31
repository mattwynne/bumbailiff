export GIT_AUTHOR_NAME="Daisy Developer"
export GIT_AUTHOR_EMAIL="daisy@developer.com"
mkdir -p tmp/git/no-todos
cd tmp/git/no-todos
git init --quiet .
git config commit.gpgSign false
git commit --quiet -m "Initial commit" --allow-empty
bumbailiff
echo $?
