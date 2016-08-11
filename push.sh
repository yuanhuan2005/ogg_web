#!/bin/bash

if [ $# -ne 1 ]
then
    echo "Usage: $0 commit_message"
    exit 1
fi

cd `dirname $0`
git add . --all
git commit -m "$1"
git push origin master

