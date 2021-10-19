#!/usr/bin/env bash
SOURCE_DIR=../now/_posts/
FILENAME=$(date +"%Y-%m-%d-%T")
PHYSICAL_LOCATION=$1

if test -f "${SOURCE_DIR}${FILENAME}.md"; then
  echo "${FILENAME}.md exists."
  exit 0
fi

echo "---
location: $PHYSICAL_LOCATION
---
" > "${SOURCE_DIR}${FILENAME}.md"
ls $SOURCE_DIR
exit 1