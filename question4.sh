#!/bin/bash
#!/usr/bin/env bash

echo -n "Please provide your user: "
read user

echo -n "Your email address: "
read email

echo user
echo email
_user=$(user)
_email=$(email)
echo _user

git config --global user.name $_user
git config --global user.email $_email
chmod 777 *
_pwd=$(pwd)

cp -r "$_pwd/.git/config" .
chmod 777 *
git add .
git commit -m "$email and $user"
git push --set-upstream origin main
