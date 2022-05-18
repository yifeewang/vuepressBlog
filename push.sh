#!/usr/bin/env sh

# 确保脚本抛出遇到的错误
set -e

git add -A

git commit -m "axios封装"

git push origin master
