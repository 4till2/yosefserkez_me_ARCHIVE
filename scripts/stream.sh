#!/usr/bin/env bash
SOURCE_DIR=./stream/_posts/
FILENAME=$(date +"%Y-%m-%d-%s")
CONTENT=$1
TAGS=$2

if test -f "${SOURCE_DIR}${FILENAME}.md"; then
  echo "${FILENAME}.md exists."
  exit 0
fi

echo "---
title:
tags: $TAGS
date: $(date +"%c")

---

$CONTENT
" > "${SOURCE_DIR}${FILENAME}.md"
ls $SOURCE_DIR
exit 1
