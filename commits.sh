#!/bin/bash

read -p "How many commits would you like? " j 

cd ~/repos/scrap

for ((i=1; i<=j; i++))
do
    echo "Your text goes here - iteration $i" >> commits.txt

    git add .

    git commit -m "Add text to example.txt - iteration $i"
done

git push origin main
