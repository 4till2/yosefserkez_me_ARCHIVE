#!/usr/bin/env bash
SOURCE_DIR=./stream/_posts/
FILENAME=$(date +"%Y-%m-%d-%T")
CONTENT=$1
TAGS=$2

if test -f "${SOURCE_DIR}${FILENAME}.md"; then
  echo "${FILENAME}.md exists."
  exit 0
fi

echo "---
title:
tags: $TAGS

---

$CONTENT
" > "${SOURCE_DIR}${FILENAME}.md"
ls $SOURCE_DIR
exit 1
