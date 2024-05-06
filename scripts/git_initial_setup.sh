#!/bin/bash
echo "git version control setup"
echo "----------------------------"
echo "What editor you want to use ?"
read EDITOR
echo "----------------------------"
echo "What email you want to use?"
read EMAIL
echo "----------------------------"
echo "What name you want to use ?"
read NAME

git config --global core.editor "$EDITOR"
git config --global user.email "$EMAIL"
git config --global user.name "$NAME"
echo "----------------------------" 
git config --list
