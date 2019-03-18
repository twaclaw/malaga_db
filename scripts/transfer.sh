#!/bin/sh

REPO=$HOME/repo
WWW=/var/www/html/weewx


cp -r $WWW/* $REPO
cd $REPO && rm -rf .git && git init && git add README.md icons/ images/ mobile/ *.html *.png *.xml *.js *.css favicon.ico NOAA font && git commit -m "Added generated web files" && git remote add origin git@github.com:twaclaw/malaga.git && git push -u --force origin master

exit 0
