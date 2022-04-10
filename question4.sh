#!/bin/bash
#!/usr/bin/env bash

echo -n "Please provide your user: "
read user

echo -n "Your email address: "
read email
git config --global user.name "$user"
git config --global user.email "$email"
git pull
git add .
git commit -m "mailanduser"
git push --set-upstream origin main
