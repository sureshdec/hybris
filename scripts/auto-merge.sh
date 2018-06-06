#!/bin/sh
# Automatically merge the last commit through the following branches:

CURRENT_BRANCH=$(git rev-parse --abbrev-ref HEAD)
LAST_COMMIT=$(git rev-list -1 HEAD)

echo Automatically merging commit $LAST_COMMIT from $CURRENT_BRANCH rippling to master
# v1.0.0, v1.5.2, etc.
versionLabel=v$1

# establish branch and tag name variables
devBranch=develop
masterBranch=master
releaseBranch=release-$versionLabel

# create the release branch from the -develop branch
git checkout -b $releaseBranch $devBranch


# merge release branch with the new version number into master
git checkout $masterBranch
git merge --no-ff $releaseBranch

# create tag for new version from -master
git tag $versionLabel

# merge release branch with the new version number back into develop
git checkout $devBranch
git merge --no-ff $releaseBranch

# remove release branch
#git branch -d $releaseBranch
