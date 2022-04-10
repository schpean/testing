#!/bin/bash
#!/usr/bin/env bash

echo -n "Please provide your name: "
read name

echo -n "Your email address: "
read email
git config --global user.name "$name"
git config --global user.email "$email"
git pull
git add .
git commit -m "mailanduser"
git push
