#!/bin/bash

sanitize () {
  sed -e 's/[&\\/]/\\&/g; s/$/\\/' -e '$s/\\$//' <<< "$1"
}

for env_variable in $(grep -o '$[A-Z_]\+' /scripts/init.sql | sort | uniq | sed 's/\$//g')
  do sed -i "s/\$$env_variable/$(sanitize ${!env_variable})/g" /scripts/init.sql
done

exec "$@"
