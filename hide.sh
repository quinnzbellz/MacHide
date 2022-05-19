#!/bin/bash
cd ~/Desktop 
for file in *; do mv "$file" `echo $file | tr ' ' '_'` ; done
for file in *; do
  mv $file ~/Desktop/.${file%%}
done