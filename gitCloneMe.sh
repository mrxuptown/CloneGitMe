#! /usr/bin/env bash

# Get User Input (clone ssh)
echo "-------------------->"
echo Welcome to CloneGitMe
echo "<--------------------"
read -p 'Enter Git SSH Key: ' cloneAdd

if [[ '$cloneAdd' =~ ^[a-z]+@[a-z]+\.[a-z]\:[A-Za-z0-9._]+\/[A-za-z0-9._-]+\.[a-z] ]]
then
    git clone $cloneAdd
else
    echo !!!INVALID SSH KEY!!!
fi 