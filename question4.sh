#!/bin/bash
#!/usr/bin/env bash

echo -n "Please provide your user: "
read user

echo -n "Your email address: "
read email

git config --global user.name $user
git config --global user.email $email
chmod 777 *
#source= "/home/schpean/Desktop/Question4/.git/config"

cp -r /home/schpean/Desktop/Question4/.git/config /home/schpean/Desktop/Question4
chmod 777 *
git add .
git commit -m "$email and $user"
git push --set-upstream origin main
