#!/bin/bash
#!/usr/bin/env bash

echo -n "Please provide your user: "
read user

echo -n "Your email address: "
read email

git config --global user.name "$user"
git config --global user.email "$email"

source= "$pwd/.git/config"
cp -r source config
git add .
git commit -m "$email and $user"
git push --set-upstream origin main
