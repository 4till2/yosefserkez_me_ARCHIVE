#!/usr/bin/env bash
SOURCE_DIR=../../_bookshelf/
FILENAME=$1
if [[ $# -eq 0 ]] ; then
    echo 'Provide a file name'
    exit 0
fi

if test -f "${SOURCE_DIR}${FILENAME}.md"; then
  echo "${FILENAME}.md exists."
  exit 0
fi

touch "${SOURCE_DIR}${FILENAME}.md"
exit 1