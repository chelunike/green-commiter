#! /bin/bash

# VARS
CRON_LINE="0	9	*	*	*	bash"


# Check crontab
if ! command -v crontab &> /dev/null
then
    echo "Crontab not found. I need this, please :C"
    exit
fi

# Check git
if ! command -v git &> /dev/null
then
    echo "Git not found. I need this, please :C"
    echo "And has to be configure with ssh"
    exit
fi

set -f
echo "Generating cronfile..."
echo $CRON_LINE $(pwd)/task.sh > cronfile

echo "Add crontab task"
#crontab cronfile

echo "ALL DONE"
echo "EDIT \"task.sh\" and add project path: "
echo "REPO_PATH="$(pwd)
