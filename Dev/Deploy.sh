#!/bin/bash

# Define the target branch for execution
target_branch="dev"

# Get the current Git branch
current_branch=$(git symbolic-ref --short HEAD)

# Check if the current branch matches the target branch
if [ "$current_branch" != "$target_branch" ]; then
  echo "Error: You can only execute this script from the '$target_branch' branch."
  exit 1
fi

/usr/bin/scp -P 65002 -r assets u845124482@89.116.53.206:/home/u845124482/public_html/devsrecops/
/usr/bin/scp -P 65002 index.html u845124482@89.116.53.206:/home/u845124482/public_html/devsrecops/

if [ $? -eq 0 ]; then
  echo "Folder copied successfully to remote machine."
else
  echo "Error: Folder copy failed."
fi