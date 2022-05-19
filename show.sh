#!/bin/bash
cd ~/Desktop
for file in .*; do mv -f -v "$file" "$(echo $file | sed 's/_/ /g')" ; done
for f in .*; do
    if [ "$f" != . -a "$f" != .. ]; then
        mv "$f" "${f:1}"
    fi
done