#!/bin/bash -e

detect_changed_services() {
  echo "----------------------------------------------"
  echo "detecting changed folders for this commit"

  # get a list of all the changed folders only
  changed_folders=`git diff --name-only ab8f54d3c2ad920414e4520f4e6b8eb53905fa1a | grep / | awk 'BEGIN {FS="/"} {print $2}' | uniq`
  echo "changed folders "$changed_folders
}

detect_changed_services

