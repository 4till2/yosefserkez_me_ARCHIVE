#!/usr/bin/env bash
SOURCE_DIR=./notebook/_posts/
TITLE=$1
TAGS=$2
FILENAME=$(date +"%Y-%m-%d-${TITLE// /-}")

if test -f "${SOURCE_DIR}${FILENAME}.md"; then
  echo "${FILENAME}.md exists."
  exit 0
fi

echo "---
title: $TITLE
description:
author: Yosef Serkez
tags: $TAGS
---

" > "${SOURCE_DIR}${FILENAME}.md"
ls $SOURCE_DIR
exit 1
