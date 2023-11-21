# Get info by calling git
echo "git.sha=`git rev-parse --short HEAD`"
echo "git.commitDate=`git log -1 --format=%cd --date=format:%Y-%m-%d`"
echo "git.branchName=`git rev-parse --abbrev-ref HEAD`"
if [ -n "$(git status --porcelain)" ]; then
    echo "git.dirty=true"
else
    echo "git.dirty=false"
fi

# Get info by reading github env vars
echo "github.repository=`echo $GITHUB_REPOSITORY`"
echo "github.refName=`echo $GITHUB_REF_NAME`"
echo "github.sha=`echo $GITHUB_SHA`"
