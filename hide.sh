#!/bin/bash
cd ~/Desktop
for file in *; do
  mv $file ~/Desktop/.${file%%}
done