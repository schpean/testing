#!/bin/bash
#!/usr/bin/env bash

echo -n "Please provide your user: "
read user

echo -n "Your email address: "
read email

echo $user
echo $email


git config user.name "$user"
git config user.email "$email"

#chmod 777 *
_pwd=$(pwd)

cp -r "$_pwd/.git/config" .
#chmod 777 *
git add .
git commit -m "$email and $user"
git push --set-upstream origin main
