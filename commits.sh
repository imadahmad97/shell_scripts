#!/bin/bash
source $(dirname "$0")/config.sh

read -p "How many commits would you like? " j 

cd $REPO_PATH

for ((i=1; i<=j; i++))
do
    echo "Your text goes here - iteration $i" >> commits.txt

    git add .

    git commit -m "Add text to example.txt - iteration $i"
done

git push origin main
