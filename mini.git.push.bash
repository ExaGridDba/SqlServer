#!/bin/bash

if (( $# == 1 )) ; then
    tgt=$1
    msg=$( basename $tgt )
else
    tgt=.
    msg=$( basename $( pwd ))
fi
echo "tgt=$tgt"
echo "msg=$msg"

git pull || exit 1
echo "git pull complete"
git add -A $tgt || exit 1
echo "git add complete"
git status
echo "git status complete"
git commit -m $msg || exit 1
echo "git commit complete"
git push || exit 1
echo "git push complete"
git status
