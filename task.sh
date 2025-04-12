#! /bin/bash

# VARS
REPO_PATH="REPO_PATH_HERE"

cd $REPO_PATH

# Get Random number
num=$((RANDOM % 3 + 1))

# Generate commits
for ((i = 1; i <= num; i++)); do
	# Do something
	echo $RANDOM > random_number.txt

	# Proced to commit
	git add random_number.txt
	git commit -m "I do something :)"

	# Never do this
	git push origin main
done


