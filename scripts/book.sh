#!/usr/bin/env bash
SOURCE_DIR=../_bookshelf/
FILENAME=$1
argc=$#
argv=("$@")
TAGS=""

if [[ $# -eq 0 ]] ; then
    echo 'Provide a file name'
    exit 0
fi

if test -f "${SOURCE_DIR}${FILENAME}.md"; then
  echo "${FILENAME}.md exists."
  exit 0
fi

for (( j=1; j<argc; j++ )); do
    TAGS+="${argv[j]} "
done

TAGS+=

BOOK=$(curl https://www.googleapis.com/books/v1/volumes\?q\=intitle:"$FILENAME")
TITLE=$(echo $BOOK | jq -r '.items[0].volumeInfo.title')
AUTHOR=$(echo $BOOK | jq -r '.items[0].volumeInfo.authors[0]')
LINK=$(echo $BOOK | jq  '.items[0].volumeInfo.infoLink')
PUBLISHED=$(echo $BOOK | jq -r '.items[0].volumeInfo.publishedDate')
DESCRIPTION=$(echo $BOOK | jq  '.items[0].searchInfo.textSnippet')
TAGS+=$(echo $BOOK | jq -r '.items[0].volumeInfo.categories[0] | ascii_downcase')
echo "---
title: $TITLE
author: $AUTHOR
link: $LINK
published: $PUBLISHED
description: $DESCRIPTION
status: complete
date: $(date +"%Y-%m-%d")
tags: $TAGS
---
" > "${SOURCE_DIR}${FILENAME}.md"
ls $SOURCE_DIR
exit 1