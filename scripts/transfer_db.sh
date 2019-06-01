#!/bin/sh

REPO=$HOME/repo_db
DB=/var/lib/weewx/weewx.sdb 


cp  $DB $REPO
cd $REPO\
&& git pull --no-edit origin master\
&& git add weewx.sdb\
&& git commit -m "Update database"\
&& git push -u origin master

exit 0
