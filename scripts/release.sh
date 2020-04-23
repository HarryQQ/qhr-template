#!/usr/bin/env bash

# 获取命令行上的参数 -r 为release级别 -b 为分支名
while [[ "$#" > 0 ]]; do case $1 in
  -r|--release) release="$2"; shift;;
  -b|--branch) branch="$2"; shift;;
  *) echo "Unknown parameter passed: $1"; exit 1;;
esac; shift; done

# Default as minor, the argument major, minor or patch:
if [ -z "$release" ]; then
    release="minor";
fi

# Default release branch is master
if [ -z "$branch" ] ; then
    branch="master";
fi;


echo "Branch is $branch"
echo "Release as $release"

# Tag prefix
prefix="prefix_v"

git pull origin $branch
echo "Current pull origin $branch."

# Generate version number and tag 指定changelog文件 在原基础添加新的changelog
standard-version -r $release --tag-prefix $prefix --infile CHANGELOG.md

# 推送代码
git push --follow-tags origin $branch

echo "Release finished."
