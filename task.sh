#! /bin/bash

# VARS
REPO_PATH="YOUR_REPO_PATH_HERE"

cd $REPO_PATH

# Do something
echo $RANDOM > random_number.txt

# Proced to commit
git add random_number.txt
git commit -m "I do something :)"

# Never do this
git push origin main
