#! /usr/bin/env bash

# Get User Input (clone ssh)
echo Welcome to CloneGitMe
read -p 'Enter Git SSH Key: ' cloneAdd

    git clone $cloneAdd
