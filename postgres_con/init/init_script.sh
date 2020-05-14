#!/bin/bash

for file in /schemas/*.sql
do
  echo "Loading schema $file"
  psql -U admin_user dbproj < $file
done
