#! /bin/bash

# Useful function for pretty printing
function print_centered() {
  declare -i width text_width available_width

  width=$(tput cols)
  text_width=$(echo $1 | wc -m)
  available_width=$(expr $width - $text_width)
  left=$(expr $available_width / 2)

  padding=""
  for i in $(seq 1 $left);
  do
    padding=$padding" "
  done

  echo "$padding$1"
}

function show_page() {
  open -a "Google Chrome" $1
}

### START ###

# Greeting
clear
print_centered "AngularJS - \"HTML, Enhanced\""
print_centered "by J3RN"
read

clear
echo "First, jQuery..."
read

vim basic/jquery.html
show_page "basic/jquery.html"

clear
echo "Alright, fair..."
echo "What does Angular have?"
read

vim -O basic/index.html basic/done.index.html
show_page "basic/index.html"

clear
echo "What the... MAGIC!?!?"
read

clear
echo "Let's add a backend!"
read

vim -O projects/index.html projects/done.index.html
