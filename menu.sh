#!/bin/bash
clear
echo "What would you like to do to your desktop icons?"
echo "Press 1 to hide, or 2 to show."
read num
if [[ $num = "1" ]]
then
    bash hide.sh
fi
if [[ $num = "2" ]]
then
    bash show.sh
fi
