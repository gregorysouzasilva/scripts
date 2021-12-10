#!/bin/sh
git add .
git commit -m "$1 - $2"
git push origin HEAD
git checkout beta$3
git merge $1
git push
cap beta deploy beta_number=$3 reason=$1 
