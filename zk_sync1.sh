#!/bin/bash/env sh

ZK_PATH="/c/Users/mburke/repositories/books"

cd "$ZK_PATH"

CHANGES_EXIST="$(git status --porcelain | wc -l)"

if [ "$CHANGES_EXIST" -eq 0 ]; then
	exit 0
fi

git add .
git commit -q -m "Last Sych: $(date +"%Y-%m-%d %H:%M:%S")"
git pull --rebase
git push -q