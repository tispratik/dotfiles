#!/bin/bash -x

if [ "$1" = "" ]; then
    git log --all --pretty=format:"%h %cd %s (%an)"
else
    git log --all --pretty=format:"%h %cd %s (%an)" --since="$1 days ago"
fi
shift
